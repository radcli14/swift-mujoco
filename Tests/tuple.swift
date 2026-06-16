import MuJoCo
import XCTest

final class TupleTests: XCTestCase {

  // NOTE: the former testMjuiState (mjUI/mjrRect) and testVFS (mjVFS) tests were removed: the
  // desktop UI render types and the (now-opaque) mjVFS struct are not part of the headless
  // MuJoCo 3.x build. See MIGRATION.md.

  func testVopt() throws {
    var vopt = MjvOption()
    vopt.jointgroup.0 = 10
    vopt.jointgroup.1 = 4
    vopt.jointgroup.2 = 5
    vopt.jointgroup.3 = 22
    vopt.jointgroup.4 = 32
    let jointgroup4 = withUnsafePointer(to: vopt.jointgroup) {
      UnsafeRawPointer($0).assumingMemoryBound(to: type(of: vopt.jointgroup.0))[4]
    }
    XCTAssertEqual(jointgroup4, 32)
  }

  func testFigure() throws {
    var figure = MjvFigure()
    figure.xformat = "string %d"
    XCTAssertEqual(figure.xformat, "string %d")
    figure.linedata[1, 1] = (10, 12)
    XCTAssertEqual(figure.linedata[1, 1].0, 10)
    XCTAssertEqual(figure.linedata[1, 1].1, 12)
  }

  static let allTests = [
    ("testVopt", testVopt),
    ("testFigure", testFigure),
  ]
}
