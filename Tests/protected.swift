import C_mujoco
import MuJoCo
import XCTest

/// Coverage for `withMuJoCoErrorHandling`, which converts MuJoCo's fatal `mju_error` path into a
/// thrown `MjError.engine`.
///
/// Why this matters: `mju_error_raw` (engine_util_errmem.c) ends in `exit(EXIT_FAILURE)` when no
/// handler is installed. That is a clean process exit rather than a signal, so a host app just
/// disappears — no crash report, no chance to stop a simulation loop or tell the user anything.
/// Any `mjERROR` in the engine does this; "FactorizeHessian: rank-deficient sparse Hessian" from
/// the Newton solver is simply the one that surfaced first.
///
/// **These tests can only fail by killing the test process.** If the mechanism regresses, the run
/// terminates rather than reporting a failure — which is itself the symptom being guarded against.
final class ProtectedCallTests: XCTestCase {

  /// The happy path must be transparent: a value returned, no handler left installed.
  func testReturnsValueWhenNoErrorOccurs() throws {
    let value = try withMuJoCoErrorHandling { 42 }
    XCTAssertEqual(value, 42)
  }

  /// A Swift error thrown by the body must propagate as itself, NOT be converted into an engine
  /// error — it never reached MuJoCo. It is carried out through the box and rethrown after the C
  /// frame returns normally, since throwing across a C boundary is undefined behaviour.
  func testRethrowsSwiftErrorsUnchanged() throws {
    struct Sentinel: Error, Equatable {}
    do {
      try withMuJoCoErrorHandling { throw Sentinel() }
      XCTFail("expected the body's own error")
    } catch let error as Sentinel {
      XCTAssertEqual(error, Sentinel())
    }
  }

  /// A real MuJoCo error, raised through the same `mju_error` entry point the engine uses, must
  /// arrive as a thrown `MjError.engine` carrying MuJoCo's message — instead of exiting.
  ///
  /// Raises the error directly rather than trying to provoke a solver failure: the point under
  /// test is the interception mechanism, and driving a model into a rank-deficient Hessian is both
  /// slow and not reliably reproducible. `mju_error_s` is the non-variadic entry point (Swift
  /// cannot call C variadics) and forwards straight to `mju_error`, so it exercises the identical
  /// `mju_error_raw` path the engine's own `mjERROR` uses.
  func testCapturesMuJoCoErrorInsteadOfExiting() throws {
    do {
      try withMuJoCoErrorHandling {
        mju_error_s("%s", "synthetic failure for test")
        XCTFail("mju_error must not return to its caller")
      }
      XCTFail("expected MjError.engine")
    } catch MjError.engine(let message) {
      XCTAssertTrue(
        message.contains("synthetic failure for test"),
        "expected MuJoCo's own message, got: \(message)")
    }
  }

  /// The handler must be uninstalled after a protected call completes, so an error raised later on
  /// this thread does not `longjmp` into a dead stack frame. Verified indirectly: a second
  /// protected call must still work normally after the first one caught an error.
  func testHandlerIsRestoredAfterCatching() throws {
    do {
      try withMuJoCoErrorHandling { mju_error_s("%s", "first") }
      XCTFail("expected MjError.engine")
    } catch MjError.engine {
      // expected
    }

    let value = try withMuJoCoErrorHandling { 7 }
    XCTAssertEqual(value, 7, "a later protected call must still function")

    do {
      try withMuJoCoErrorHandling { mju_error_s("%s", "second") }
      XCTFail("expected MjError.engine")
    } catch MjError.engine(let message) {
      XCTAssertTrue(message.contains("second"), "got: \(message)")
    }
  }

  /// Nested protected calls: the inner error must be caught by the INNER call, and the outer call
  /// must remain functional afterwards — i.e. the inner call restored the outer landing pad rather
  /// than clobbering it.
  func testNestedProtectedCalls() throws {
    let result: String = try withMuJoCoErrorHandling {
      var inner = "not-run"
      do {
        try withMuJoCoErrorHandling { mju_error_s("%s", "inner failure") }
      } catch MjError.engine(let message) {
        inner = message
      }
      return inner
    }
    XCTAssertTrue(result.contains("inner failure"), "got: \(result)")

    // The outer call completed normally, so the outer landing pad must still be intact for a
    // subsequent error.
    do {
      try withMuJoCoErrorHandling { mju_error_s("%s", "after nesting") }
      XCTFail("expected MjError.engine")
    } catch MjError.engine(let message) {
      XCTAssertTrue(message.contains("after nesting"), "got: \(message)")
    }
  }

  /// Errors raised on separate threads must not cross: the handler is thread-local, so one
  /// thread's failure must not unwind another thread's stack. Model compilation and stepping can
  /// run concurrently in a host app, which is exactly this shape.
  func testConcurrentProtectedCallsAreIsolated() throws {
    let iterations = 8
    let expectation = expectation(description: "all threads finish")
    expectation.expectedFulfillmentCount = iterations
    let lock = NSLock()
    var caught = 0
    var succeeded = 0

    DispatchQueue.concurrentPerform(iterations: iterations) { index in
      if index.isMultiple(of: 2) {
        do {
          try withMuJoCoErrorHandling { mju_error_s("%s", "thread \(index)") }
        } catch MjError.engine {
          lock.withLock { caught += 1 }
        } catch {
          XCTFail("unexpected error: \(error)")
        }
      } else {
        // A thread doing ordinary work must be unaffected by the failures beside it.
        if let value = try? withMuJoCoErrorHandling({ index }), value == index {
          lock.withLock { succeeded += 1 }
        }
      }
      expectation.fulfill()
    }

    wait(for: [expectation], timeout: 30)
    XCTAssertEqual(caught, iterations / 2)
    XCTAssertEqual(succeeded, iterations / 2)
  }

  /// End to end through the real engine: a model that steps normally keeps stepping normally when
  /// wrapped, so installing the handler costs nothing on the happy path.
  func testSteppingARealModelUnderProtection() throws {
    let model = try MjModel(
      fromXML: """
        <mujoco>
          <worldbody>
            <body pos="0 0 1">
              <freejoint/>
              <geom type="sphere" size="0.1" mass="1"/>
            </body>
          </worldbody>
        </mujoco>
        """)
    var data = model.makeData()
    try withMuJoCoErrorHandling {
      for _ in 0..<100 { model.step(data: &data) }
    }
    XCTAssertGreaterThan(data.time, 0, "the model must actually have advanced")
  }
}
