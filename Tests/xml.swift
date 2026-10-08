import MuJoCo
import XCTest

final class XMLTests: XCTestCase {

  func testLoadEmptyModel() throws {
    let model = try MjModel(fromXML: "<mujoco/>")
    XCTAssertEqual(model.nq, 0)
    XCTAssertEqual(model.nv, 0)
    XCTAssertEqual(model.nu, 0)
    XCTAssertEqual(model.na, 0)
    XCTAssertEqual(model.nbody, 1)  // worldbody exists even in empty model
    var data = model.makeData()
    model.step(data: &data)
  }

  func testInvalidXMLFailsToLoad() throws {
    do {
      let _ = try MjModel(fromXML: "<mujoc")
      XCTFail()
    } catch MjError.xml(let str) {
      XCTAssert((str?.count ?? 0) > 0)
    }
  }

  /// MuJoCo's compile errors end with "Element name 'X', id N", which identifies the faulty element;
  /// a long name pushes that suffix past 256 bytes, so it only survives with a larger buffer.
  func testLongCompileErrorKeepsElementSuffix() throws {
    let name = String(repeating: "a", count: 220)
    let xml = """
      <mujoco><worldbody><body name="\(name)">
        <inertial pos="0 0 0" mass="1" diaginertia="0.001 0.001 1"/>
        <geom size="0.1"/>
      </body></worldbody></mujoco>
      """
    do {
      _ = try MjModel(fromXML: xml)
      XCTFail("expected an inertia compile error")
    } catch MjError.xml(let str) {
      let message = str ?? ""
      XCTAssertGreaterThan(message.utf8.count, 256)
      XCTAssertTrue(message.contains("Element name"), message)
    }
  }

  static let allTests = [
    ("testLongCompileErrorKeepsElementSuffix", testLongCompileErrorKeepsElementSuffix),
    ("testLoadEmptyModel", testLoadEmptyModel),
    ("testInvalidXMLFailsToLoad", testInvalidXMLFailsToLoad),
  ]
}
