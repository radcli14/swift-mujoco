import MuJoCo
import XCTest

/// Exercises the public `MjSceneComposer` API: composing several namespaced, posed child models
/// into one MJCF string — the multi-robot scene-composition path ARMOR consumes.
final class ComposeTests: XCTestCase {

  private let childXML = """
    <mujoco model="robot">
      <worldbody>
        <body name="link">
          <joint name="joint" type="hinge"/>
          <geom type="box" size="0.1 0.1 0.1"/>
        </body>
      </worldbody>
    </mujoco>
    """

  func testComposeTwoPrefixedInstances() throws {
    let mjcf = try MjSceneComposer.composeMJCF([
      MjSceneInstance(xml: childXML, prefix: "a_", pos: (0, 0, 0), quat: (1, 0, 0, 0)),
      MjSceneInstance(xml: childXML, prefix: "b_", pos: (1, 0, 0.5), quat: (1, 0, 0, 0)),
    ])

    // The serialized MJCF must carry both namespaced bodies and joints…
    XCTAssertTrue(mjcf.contains("a_link"), "missing a_link in:\n\(mjcf)")
    XCTAssertTrue(mjcf.contains("b_link"), "missing b_link in:\n\(mjcf)")
    XCTAssertTrue(mjcf.contains("a_joint"), "missing a_joint")
    XCTAssertTrue(mjcf.contains("b_joint"), "missing b_joint")
    // …and not the un-prefixed names (proving the prefix actually namespaced them).
    XCTAssertFalse(mjcf.contains("\"link\""), "un-prefixed body name should not appear")

    // The composed MJCF must re-load and compile.
    let model = try MjModel(fromXML: mjcf)
    XCTAssertGreaterThanOrEqual(model.nbody, 3)  // world + 2 links (at minimum)
  }

  static let allTests = [
    ("testComposeTwoPrefixedInstances", testComposeTwoPrefixedInstances)
  ]
}
