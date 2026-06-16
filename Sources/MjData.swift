import C_mujoco

/// Protocolize internal storage for MjData. Internal use only.
///
/// In MuJoCo 3.x the model dimensions (nq, nv, nbody, ...) are 64-bit (mjtSize) and several
/// arrays in mjData are sized by *dynamic* counts (ncon, nefc, nisland, ...) that change as the
/// simulation runs. Rather than caching a fixed list of sizes by value (as in the 2.x binding),
/// MjData now borrows the originating mjModel pointer and reads every dimension on demand:
/// static dimensions from the model, dynamic dimensions from the data. The model therefore must
/// outlive any MjData created from it (this already holds in normal usage where MjModel is kept
/// alive for the duration of the simulation).
public protocol MjDataStorage: AnyObject {
  var _model: UnsafeMutablePointer<mjModel> { get }
  var _data: UnsafeMutablePointer<mjData> { get }
}

/// This is the main data structure holding the simulation state. It is the workspace where all functions read their modifiable inputs and write their outputs.
public struct MjData {

  @usableFromInline
  let _storage: MjDataStorage

  @inlinable
  var _model: UnsafeMutablePointer<mjModel> { _storage._model }
  @inlinable
  var _data: UnsafeMutablePointer<mjData> { _storage._data }

  // Static dimensions, read from the model (mjtSize / int64 in C, surfaced as Int32).
  @inlinable
  var na: Int32 { Int32(_model.pointee.na) }
  @inlinable
  var nbody: Int32 { Int32(_model.pointee.nbody) }
  @inlinable
  var nbvh: Int32 { Int32(_model.pointee.nbvh) }
  @inlinable
  var nbvhdynamic: Int32 { Int32(_model.pointee.nbvhdynamic) }
  @inlinable
  var nC: Int32 { Int32(_model.pointee.nC) }
  @inlinable
  var ncam: Int32 { Int32(_model.pointee.ncam) }
  @inlinable
  var nD: Int32 { Int32(_model.pointee.nD) }
  @inlinable
  var neq: Int32 { Int32(_model.pointee.neq) }
  @inlinable
  var nflexedge: Int32 { Int32(_model.pointee.nflexedge) }
  @inlinable
  var nflexelem: Int32 { Int32(_model.pointee.nflexelem) }
  @inlinable
  var nflexvert: Int32 { Int32(_model.pointee.nflexvert) }
  @inlinable
  var ngeom: Int32 { Int32(_model.pointee.ngeom) }
  @inlinable
  var nhistory: Int32 { Int32(_model.pointee.nhistory) }
  @inlinable
  var nJfe: Int32 { Int32(_model.pointee.nJfe) }
  @inlinable
  var nJfv: Int32 { Int32(_model.pointee.nJfv) }
  @inlinable
  var nJmom: Int32 { Int32(_model.pointee.nJmom) }
  @inlinable
  var njnt: Int32 { Int32(_model.pointee.njnt) }
  @inlinable
  var nJten: Int32 { Int32(_model.pointee.nJten) }
  @inlinable
  var nlight: Int32 { Int32(_model.pointee.nlight) }
  @inlinable
  var nM: Int32 { Int32(_model.pointee.nM) }
  @inlinable
  var nmocap: Int32 { Int32(_model.pointee.nmocap) }
  @inlinable
  var npluginstate: Int32 { Int32(_model.pointee.npluginstate) }
  @inlinable
  var nq: Int32 { Int32(_model.pointee.nq) }
  @inlinable
  var nsensordata: Int32 { Int32(_model.pointee.nsensordata) }
  @inlinable
  var nsite: Int32 { Int32(_model.pointee.nsite) }
  @inlinable
  var ntendon: Int32 { Int32(_model.pointee.ntendon) }
  @inlinable
  var ntree: Int32 { Int32(_model.pointee.ntree) }
  @inlinable
  var nu: Int32 { Int32(_model.pointee.nu) }
  @inlinable
  var nuserdata: Int32 { Int32(_model.pointee.nuserdata) }
  @inlinable
  var nv: Int32 { Int32(_model.pointee.nv) }
  @inlinable
  var nwrap: Int32 { Int32(_model.pointee.nwrap) }
  // NOTE: the dynamic dimensions (ncon, nefc, nisland, nidof, nJ, nA, nY, nplugin) are real
  // mjData fields, so their Int32 accessors are generated in MjData+Extensions.swift and must NOT
  // be redeclared here.

  @usableFromInline
  init(model: UnsafeMutablePointer<mjModel>, data: UnsafeMutablePointer<mjData>) {
    _storage = Storage(model: model, data: data)
  }

  @usableFromInline
  init(model: UnsafeMutablePointer<mjModel>, staticData: UnsafeMutablePointer<mjData>) {
    _storage = StaticStorage(model: model, data: staticData)
  }

  @usableFromInline
  final class StaticStorage: MjDataStorage {
    @usableFromInline
    let _model: UnsafeMutablePointer<mjModel>
    @usableFromInline
    let _data: UnsafeMutablePointer<mjData>

    init(model: UnsafeMutablePointer<mjModel>, data: UnsafeMutablePointer<mjData>) {
      _model = model
      _data = data
    }
  }

  @usableFromInline
  final class Storage: MjDataStorage {
    @usableFromInline
    let _model: UnsafeMutablePointer<mjModel>
    @usableFromInline
    let _data: UnsafeMutablePointer<mjData>

    init(model: UnsafeMutablePointer<mjModel>, data: UnsafeMutablePointer<mjData>) {
      _model = model
      _data = data
    }

    deinit {
      mj_deleteData(_data)
    }
  }
}

// Name the same, but implemented manually.
extension MjData {
  /// Allocate array of specified size on mjData stack. Call mju_error on stack overflow.
  @inlinable
  public func stackAlloc(size: Int32) -> MjArray<Double> {
    return MjArray(array: mj_stackAllocNum(self._data, Int(size)), object: _storage, len: size)
  }
}

// Different name.
extension MjData {
  /// Copy mjData. m is only required to contain the size fields from MJMODEL_INTS.
  @inlinable
  public func copied(model: MjModel) -> MjData {
    return MjData(model: model._model, data: mj_copyData(nil, model._model, _data))
  }
  /// Copy mjData. m is only required to contain the size fields from MJMODEL_INTS.
  @inlinable
  public mutating func copy(from src: MjData, model: MjModel) {
    // Don't need to know the return value, it is the same as the _model.
    mj_copyData(_data, model._model, src._data)
  }
}
