import C_mujoco
import MuJoCo
import XCTest

/// Tests that exercise the MuJoCo 3.x capabilities that motivated the upgrade:
///   * the basic load / step / read-state path through the Swift bindings, and
///   * runtime model composition via the MjSpec / mjs_* attachment API + MJCF `<frame>`,
///     which lets a reusable sub-model be instanced multiple times under a name prefix
///     (the MuJoCo analogue of SDF `<include><name><pose>`).
final class AttachTests: XCTestCase {

  /// Acceptance: a trivial MJCF loads through `MjModel(fromXML:)`, can be stepped, and its
  /// generalized coordinates are readable and evolve under gravity.
  func testLoadStepReadQpos() throws {
    let xml = """
      <mujoco>
        <option gravity="0 0 -9.81"/>
        <worldbody>
          <body name="ball" pos="0 0 1">
            <freejoint/>
            <geom type="sphere" size="0.1"/>
          </body>
        </worldbody>
      </mujoco>
      """
    let model = try MjModel(fromXML: xml)
    var data = model.makeData()

    let z0 = data.qpos[2]
    for _ in 0..<100 {
      model.step(data: &data)
    }
    let z1 = data.qpos[2]

    XCTAssertEqual(z0, 1.0, accuracy: 1e-9)  // free joint qpos = (x y z qw qx qy qz)
    XCTAssertLessThan(z1, z0)  // the ball fell under gravity
  }

  /// Acceptance: two prefixed instances of the same reusable sub-model are composed into one
  /// model via `mjs_attach`, and the resulting bodies/joints carry the namespacing prefix.
  func testAttachPrefixNamespacing() throws {
    let childXML = """
      <mujoco model="robot">
        <worldbody>
          <body name="link" pos="0 0 0.2">
            <joint name="joint" type="hinge"/>
            <geom type="box" size="0.1 0.1 0.1"/>
          </body>
        </worldbody>
      </mujoco>
      """

    let err = UnsafeMutablePointer<CChar>.allocate(capacity: 1024)
    defer { err.deallocate() }

    // mjs_attach attaches by reference, so each instance needs its own child spec, and the
    // children must stay alive until the parent is compiled. (Deletion order below is model,
    // then parent, then children — the reverse of their dependency.)
    var children: [UnsafeMutablePointer<mjSpec>] = []
    defer { for c in children { mj_deleteSpec(c) } }

    // Parent spec we compose into.
    guard let parent = mj_makeSpec() else { return XCTFail("mj_makeSpec failed") }
    defer { mj_deleteSpec(parent) }

    // Attach a fresh copy of the child under two different prefixes, each on its own posed frame.
    for prefix in ["robot1_", "robot2_"] {
      guard let child = mj_parseXMLString(childXML, nil, err, 1024) else {
        return XCTFail("child parse failed: \(String(cString: err))")
      }
      children.append(child)
      guard let childWorld = mjs_findBody(child, "world") else {
        return XCTFail("child worldbody not found")
      }
      guard let parentWorld = mjs_findBody(parent, "world") else {
        return XCTFail("parent worldbody not found")
      }
      guard let frame = mjs_addFrame(parentWorld, nil) else {
        return XCTFail("mjs_addFrame failed")
      }
      let attached = mjs_attach(frame.pointee.element, childWorld.pointee.element, prefix, "")
      XCTAssertNotNil(attached, "mjs_attach(\(prefix)) returned NULL")
    }

    guard let m = mj_compile(parent, nil) else {
      return XCTFail("mj_compile failed: \(String(cString: mjs_getError(parent)))")
    }
    defer { mj_deleteModel(m) }

    // The composed model must contain both namespaced bodies and joints.
    let bodyType = Int32(mjOBJ_BODY.rawValue)
    let jointType = Int32(mjOBJ_JOINT.rawValue)
    XCTAssertGreaterThanOrEqual(
      mj_name2id(m, bodyType, "robot1_link"), 0, "missing body robot1_link")
    XCTAssertGreaterThanOrEqual(
      mj_name2id(m, bodyType, "robot2_link"), 0, "missing body robot2_link")
    XCTAssertGreaterThanOrEqual(
      mj_name2id(m, jointType, "robot1_joint"), 0, "missing joint robot1_joint")
    XCTAssertGreaterThanOrEqual(
      mj_name2id(m, jointType, "robot2_joint"), 0, "missing joint robot2_joint")

    // The un-prefixed names must NOT exist (proving the prefix actually namespaced them).
    XCTAssertLessThan(mj_name2id(m, bodyType, "link"), 0, "un-prefixed body should not exist")
  }

  static let allTests = [
    ("testLoadStepReadQpos", testLoadStepReadQpos),
    ("testAttachPrefixNamespacing", testAttachPrefixNamespacing),
  ]
}
