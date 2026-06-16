import Foundation
import MuJoCo
import XCTest

/// Verifies that models referencing external mesh files (.stl / .obj) compile, i.e. that the
/// built-in OBJ/STL decoder plugins are compiled in and registered at runtime. Assets are passed
/// in-memory so the test touches no filesystem.
final class MeshTests: XCTestCase {

  // Tetrahedron (4 vertices — MuJoCo requires a mesh to have at least 4) and its 4 triangular
  // faces, used to build both the STL and OBJ test assets.
  private let verts: [[Float]] = [[0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1]]
  private let faces: [[Int]] = [[0, 1, 2], [0, 1, 3], [0, 2, 3], [1, 2, 3]]

  /// Binary-STL blob for the tetrahedron:
  /// 80-byte header + uint32 face-count + one 50-byte facet (normal + 3 verts + attribute) each.
  private func tetrahedronSTL() -> Data {
    var data = Data(count: 80)  // header
    var nfaces = UInt32(faces.count)
    withUnsafeBytes(of: &nfaces) { data.append(contentsOf: $0) }
    for face in faces {
      for f: Float in [0, 0, 0] {  // normal (unused by the decoder)
        var v = f
        withUnsafeBytes(of: &v) { data.append(contentsOf: $0) }
      }
      for vi in face {
        for f in verts[vi] {
          var v = f
          withUnsafeBytes(of: &v) { data.append(contentsOf: $0) }
        }
      }
      var attribute: UInt16 = 0
      withUnsafeBytes(of: &attribute) { data.append(contentsOf: $0) }
    }
    return data
  }

  func testLoadModelWithSTLMesh() throws {
    let xml = """
      <mujoco>
        <asset>
          <mesh name="tri" file="tri.stl"/>
        </asset>
        <worldbody>
          <body name="meshbody">
            <geom type="mesh" mesh="tri"/>
          </body>
        </worldbody>
      </mujoco>
      """
    let model = try MjModel(fromXML: xml, assets: ["tri.stl": tetrahedronSTL()])
    XCTAssertEqual(model.nmesh, 1)
    XCTAssertGreaterThanOrEqual(model.ngeom, 1)
  }

  func testLoadModelWithOBJMesh() throws {
    let objLines =
      verts.map { "v \($0[0]) \($0[1]) \($0[2])" }
      + faces.map { "f \($0[0] + 1) \($0[1] + 1) \($0[2] + 1)" }
    let obj = objLines.joined(separator: "\n")
    let xml = """
      <mujoco>
        <asset>
          <mesh name="tri" file="tri.obj"/>
        </asset>
        <worldbody>
          <body name="meshbody">
            <geom type="mesh" mesh="tri"/>
          </body>
        </worldbody>
      </mujoco>
      """
    let model = try MjModel(fromXML: xml, assets: ["tri.obj": Data(obj.utf8)])
    XCTAssertEqual(model.nmesh, 1)
    XCTAssertGreaterThanOrEqual(model.ngeom, 1)
  }

  static let allTests = [
    ("testLoadModelWithSTLMesh", testLoadModelWithSTLMesh),
    ("testLoadModelWithOBJMesh", testLoadModelWithOBJMesh),
  ]
}
