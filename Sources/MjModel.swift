import C_mujoco
import CShim_mujoco
import Foundation

public enum MjError: Error {
  case xml(String?)
  case actuator(String?)
}

// Registers MuJoCo's built-in mesh-file decoders (OBJ + STL) exactly once, the first time a model
// is loaded, so that models referencing external .obj / .stl meshes compile. Implemented as a
// lazily-initialized global (thread-safe, runs once); each loader touches it before loading.
@usableFromInline
let mjBuiltinDecodersRegistered: Void = {
  mj_registerBuiltinDecoders()
}()

/// Protocolize internal storage for MjModel. Internal use only.
public protocol MjModelStorage: AnyObject {
  var _model: UnsafeMutablePointer<mjModel> { get }
}

/// This is the main data structure holding the MuJoCo model. It is treated as constant by the simulator.
public struct MjModel {

  @usableFromInline
  let _storage: MjModelStorage
  @inlinable
  var _model: UnsafeMutablePointer<mjModel> { _storage._model }

  @usableFromInline
  final class Storage: MjModelStorage {
    @usableFromInline
    let _model: UnsafeMutablePointer<mjModel>

    init(model: UnsafeMutablePointer<mjModel>) {
      _model = model
    }

    deinit {
      mj_deleteModel(_model)
    }
  }

  @usableFromInline
  final class StaticStorage: MjModelStorage {
    @usableFromInline
    let _model: UnsafeMutablePointer<mjModel>

    init(model: UnsafeMutablePointer<mjModel>) {
      _model = model
    }
  }

  @usableFromInline
  init(model: UnsafeMutablePointer<mjModel>) {
    _storage = Storage(model: model)
  }

  @usableFromInline
  init(staticModel: UnsafeMutablePointer<mjModel>) {
    _storage = StaticStorage(model: staticModel)
  }

  /// Load model from binary MJB file.
  public init?(fromBinaryPath filePath: String) {
    _ = mjBuiltinDecodersRegistered
    guard let model = mj_loadModel(filePath, nil) else {
      return nil
    }
    self.init(model: model)
  }

  /// Parse XML file in MJCF or URDF format, compile it, return low-level model. If error is not NULL, it must have size error_sz.
  public init(fromXMLPath filePath: String) throws {
    _ = mjBuiltinDecodersRegistered
    let errorStr = UnsafeMutablePointer<CChar>.allocate(capacity: 256)
    guard let model = mj_loadXML(filePath, nil, errorStr, 256) else {
      let error = MjError.xml(String(cString: errorStr, encoding: .utf8))
      errorStr.deallocate()
      throw error
    }
    errorStr.deallocate()
    self.init(model: model)
  }

  /// Parse an MJCF/URDF XML string, compile it, and return the low-level model. Any referenced
  /// assets (meshes, textures, included files, ...) can be supplied in-memory via `assets`,
  /// keyed by the filename used in the XML.
  ///
  /// In MuJoCo 3.x the virtual file system (mjVFS) is an opaque handle, so this is implemented
  /// directly against the C VFS API (mj_defaultVFS / mj_addBufferVFS / mj_deleteVFS).
  public init(fromXML: String, assets: [String: Data]? = nil) throws {
    _ = mjBuiltinDecodersRegistered
    let errorStr = UnsafeMutablePointer<CChar>.allocate(capacity: 256)
    defer { errorStr.deallocate() }

    var vfs = mjVFS()
    mj_defaultVFS(&vfs)
    defer { mj_deleteVFS(&vfs) }

    if let assets = assets {
      for (name, data) in assets {
        _ = data.withUnsafeBytes { raw in
          mj_addBufferVFS(&vfs, name, raw.baseAddress, Int32(raw.count))
        }
      }
    }

    // Avoid colliding with a caller-supplied asset name.
    var modelName = "model.xml"
    while assets?[modelName] != nil {
      modelName = "_" + modelName
    }

    var xmlString = fromXML
    let model: UnsafeMutablePointer<mjModel>? = xmlString.withUTF8 { utf8 in
      _ = mj_addBufferVFS(&vfs, modelName, utf8.baseAddress, Int32(utf8.count))
      return mj_loadXML(modelName, &vfs, errorStr, 256)
    }
    guard let model = model else {
      throw MjError.xml(String(cString: errorStr, encoding: .utf8))
    }
    self.init(model: model)
  }
}

// Name the same, but implemented manually.
extension MjModel {
  /// Allocate mjData correponding to given model. If the model buffer is unallocated the initial configuration will not be set.
  @inlinable
  public func makeData() -> MjData {
    let data = mj_makeData(_model)!
    return MjData(model: _model, data: data)
  }
  /// Set actuator_lengthrange for specified actuator; return 1 if ok, 0 if error.
  @inlinable
  public func setLengthRange(data: inout MjData, index: Int32, opt: MjLROpt) throws {
    var opt__lropt = opt._lropt
    let errorStr = UnsafeMutablePointer<CChar>.allocate(capacity: 256)
    guard 1 == mj_setLengthRange(_model, data._data, index, &opt__lropt, errorStr, 256) else {
      let error = MjError.actuator(String(cString: errorStr, encoding: .utf8))
      errorStr.deallocate()
      throw error
    }
    errorStr.deallocate()
  }
  /// Update XML data structures with info from low-level model, save as MJCF. If error is not NULL, it must have size error_sz.
  @inlinable
  public func saveLastXML(filename: String) throws {
    let errorStr = UnsafeMutablePointer<CChar>.allocate(capacity: 256)
    guard 1 == mj_saveLastXML(filename, _model, errorStr, 256) else {
      let error = MjError.xml(String(cString: errorStr, encoding: .utf8))
      errorStr.deallocate()
      throw error
    }
    errorStr.deallocate()
  }
}

// Different name.
extension MjModel {
  /// Copy mjModel, allocate new if dest is NULL.
  @inlinable
  public func copied() -> MjModel {
    return MjModel(model: mj_copyModel(nil, _model))
  }
  /// Copy mjModel, allocate new if dest is NULL.
  @inlinable
  public mutating func copy(from src: MjModel) {
    // Don't need to know the return value, it is the same as the _model.
    mj_copyModel(_model, src._model)
  }
  /// Save model to binary MJB file or memory buffer; buffer has precedence when given.
  @inlinable
  public func write(to filePath: String) {
    mj_saveModel(_model, filePath, nil, 0)
  }
  /// Save model to binary MJB file or memory buffer; buffer has precedence when given.
  @inlinable
  public func toMemoryBuffer() -> UnsafeMutableRawBufferPointer {
    let buffer = UnsafeMutableRawBufferPointer.allocate(
      byteCount: Int(mj_sizeModel(_model)), alignment: 4)
    mj_saveModel(_model, nil, buffer.baseAddress, Int32(buffer.count))
    return buffer
  }
}

public struct MjNameArray {
  @usableFromInline
  let names: MjArray<CChar>  // These are entirely immutable (read-only)
  @usableFromInline
  let adr: MjArray<Int32>
  @usableFromInline
  init(names: MjArray<CChar>, adr: MjArray<Int32>) {
    self.names = names
    self.adr = adr
  }
  @inlinable
  public subscript(index: Int) -> String? {
    let offset = Int(adr[index])
    guard names[offset] != 0 else { return nil }
    return String(cString: names + offset, encoding: .utf8)
  }
  @inlinable
  public var count: Int { adr.count }
}

// Deconstruct names into MjNameArray, these are read-only.
extension MjModel {
  /// model name
  @inlinable
  public var name: String? { _model.pointee.names.flatMap { String(cString: $0, encoding: .utf8) } }
  /// body name                       (nbody x 1)
  @inlinable
  public var bodyNames: MjNameArray { MjNameArray(names: names, adr: nameBodyadr) }
  /// joint name                      (njnt x 1)
  @inlinable
  public var jntNames: MjNameArray { MjNameArray(names: names, adr: nameJntadr) }
  /// geom name                       (ngeom x 1)
  @inlinable
  public var geomNames: MjNameArray { MjNameArray(names: names, adr: nameGeomadr) }
  /// site name                       (nsite x 1)
  @inlinable
  public var siteNames: MjNameArray { MjNameArray(names: names, adr: nameSiteadr) }
  /// camera name                     (ncam x 1)
  @inlinable
  public var camNames: MjNameArray { MjNameArray(names: names, adr: nameCamadr) }
  /// light name                      (nlight x 1)
  @inlinable
  public var lightNames: MjNameArray { MjNameArray(names: names, adr: nameLightadr) }
  /// mesh name                       (nmesh x 1)
  @inlinable
  public var meshNames: MjNameArray { MjNameArray(names: names, adr: nameMeshadr) }
  /// skin name                       (nskin x 1)
  @inlinable
  public var skinNames: MjNameArray { MjNameArray(names: names, adr: nameSkinadr) }
  /// hfield name                     (nhfield x 1)
  @inlinable
  public var HfieldNames: MjNameArray { MjNameArray(names: names, adr: nameHfieldadr) }
  /// texture name                    (ntex x 1)
  @inlinable
  public var texNames: MjNameArray { MjNameArray(names: names, adr: nameTexadr) }
  /// material name                   (nmat x 1)
  @inlinable
  public var matNames: MjNameArray { MjNameArray(names: names, adr: nameMatadr) }
  /// geom pair name                  (npair x 1)
  @inlinable
  public var pairNames: MjNameArray { MjNameArray(names: names, adr: namePairadr) }
  /// exclude name                    (nexclude x 1)
  @inlinable
  public var excludeNames: MjNameArray { MjNameArray(names: names, adr: nameExcludeadr) }
  /// equality constraint name        (neq x 1)
  @inlinable
  public var eqNames: MjNameArray { MjNameArray(names: names, adr: nameEqadr) }
  /// tendon name                     (ntendon x 1)
  @inlinable
  public var tendonNames: MjNameArray { MjNameArray(names: names, adr: nameTendonadr) }
  /// actuator name                   (nu x 1)
  @inlinable
  public var actuatorNames: MjNameArray { MjNameArray(names: names, adr: nameActuatoradr) }
  /// sensor name                     (nsensor x 1)
  @inlinable
  public var sensorNames: MjNameArray { MjNameArray(names: names, adr: nameSensoradr) }
  /// numeric name                    (nnumeric x 1)
  @inlinable
  public var numericNames: MjNameArray { MjNameArray(names: names, adr: nameNumericadr) }
  /// text name                       (ntext x 1)
  @inlinable
  public var textNames: MjNameArray { MjNameArray(names: names, adr: nameTextadr) }
  /// tuple name                      (ntuple x 1)
  @inlinable
  public var tupleNames: MjNameArray { MjNameArray(names: names, adr: nameTupleadr) }
  /// keyframe name                   (nkey x 1)
  @inlinable
  public var keyNames: MjNameArray { MjNameArray(names: names, adr: nameKeyadr) }
  /// plugin name                   (nkey x 1)
  @inlinable
  public var pluginNames: MjNameArray { MjNameArray(names: names, adr: namePluginadr) }
}
