import C_mujoco
import CShim_mujoco

/// The concrete closure type handed across the C boundary.
///
/// Deliberately non-generic: Swift cannot form a C function pointer from a closure that captures
/// generic parameters, but it *can* form one that dereferences a pointer to this type. All the
/// generic work therefore stays on the Swift side, captured inside the closure value itself.
private typealias MjCallBody = () -> Void

/// Runs `body` with a MuJoCo error handler installed, turning an engine-level error into a thrown
/// ``MjError/engine(_:)`` rather than a process exit.
///
/// Wrap any call that reaches MuJoCo's engine — stepping, model compilation, scene composition:
///
/// ```swift
/// do {
///     try withMuJoCoErrorHandling { model.step(data: &data) }
/// } catch MjError.engine(let message) {
///     // Simulation is no longer trustworthy — stop the loop and surface `message`.
/// }
/// ```
///
/// - Important: When this throws, the `MjModel`/`MjData` involved must be treated as **unusable**.
///   MuJoCo raised the error because it had already determined its own state was invalid, and the
///   stack was unwound with `longjmp`. Discard and reload rather than stepping again — this is a
///   stop signal, not a transient to retry through.
///
/// - Important: That `longjmp` unwinds *past Swift frames* without running their cleanup, so ARC
///   releases for objects live in `body` at the moment of failure are skipped and those objects
///   leak. The leak is bounded (one occurrence per failure, and a failure means the model is being
///   torn down anyway) and is the accepted cost of not terminating the process — but it is the
///   reason `body` should stay small and focused on the MuJoCo call itself, rather than wrapping
///   large amounts of surrounding Swift work.
///
/// - Note: The handler is **thread-local**, so concurrent protected calls on different threads stay
///   isolated, and calls nest correctly (an inner call restores the outer one's handler when it
///   completes). A MuJoCo error raised on a thread with no protected call in progress falls back to
///   MuJoCo's own behaviour.
///
/// - Note: Only errors routed through `mju_error` are caught. A genuine memory fault inside the
///   engine is still a signal and still crashes the process — this converts MuJoCo's *deliberate*
///   failures, which are the entire class responsible for silent app termination.
/// - Note: `body` is `@escaping` for a substantive reason, not convenience. When MuJoCo fails, the
///   `longjmp` unwinds past this closure's frame without running ARC releases, so its retain is
///   never balanced and the closure genuinely outlives the call. `withoutActuallyEscaping` detects
///   exactly that and traps ("closure argument was escaped"), which would turn every caught MuJoCo
///   error back into a process abort — the opposite of the point. Declaring it escaping states the
///   real lifetime rather than asserting one the failure path cannot honour.
public func withMuJoCoErrorHandling<T>(_ body: @escaping () throws -> T) throws -> T {
  var outcome: Result<T, Error>?
  var messageBuffer = [CChar](repeating: 0, count: 1024)

  // A Swift error thrown by `body` is captured here and rethrown once the C frame has returned
  // normally. Throwing it across the C boundary would be undefined behaviour.
  var thunk: MjCallBody = {
    do {
      outcome = .success(try body())
    } catch {
      outcome = .failure(error)
    }
  }

  let failed: Int32 = withUnsafeMutablePointer(to: &thunk) { thunkPointer in
    messageBuffer.withUnsafeMutableBufferPointer { buffer in
      mj_protectedCall(
        { context in
          guard let context else { return }
          context.assumingMemoryBound(to: MjCallBody.self).pointee()
        },
        UnsafeMutableRawPointer(thunkPointer),
        buffer.baseAddress,
        buffer.count
      )
    }
  }

  if failed != 0 {
    let message = messageBuffer.withUnsafeBufferPointer { buffer in
      buffer.baseAddress.map { String(cString: $0) } ?? ""
    }
    throw MjError.engine(message)
  }

  switch outcome {
  case .success(let value):
    return value
  case .failure(let error):
    throw error
  case nil:
    // Unreachable: the shim reports failure whenever the body did not run to completion, so a
    // non-zero return is handled above and a zero return means the thunk ran and set `outcome`.
    throw MjError.engine("protected call completed without producing a result")
  }
}
