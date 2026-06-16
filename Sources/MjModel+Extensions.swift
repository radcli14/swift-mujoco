import C_mujoco
extension MjModel {
  /// number of generalized coordinates = dim(qpos)
  @inlinable
  public var nq: Int32 {
    get { Int32(_model.pointee.nq) }
    set { _model.pointee.nq = Int64(newValue) }
  }
  /// number of degrees of freedom = dim(qvel)
  @inlinable
  public var nv: Int32 {
    get { Int32(_model.pointee.nv) }
    set { _model.pointee.nv = Int64(newValue) }
  }
  /// number of actuators/controls = dim(ctrl)
  @inlinable
  public var nu: Int32 {
    get { Int32(_model.pointee.nu) }
    set { _model.pointee.nu = Int64(newValue) }
  }
  /// number of activation states = dim(act)
  @inlinable
  public var na: Int32 {
    get { Int32(_model.pointee.na) }
    set { _model.pointee.na = Int64(newValue) }
  }
  /// number of bodies
  @inlinable
  public var nbody: Int32 {
    get { Int32(_model.pointee.nbody) }
    set { _model.pointee.nbody = Int64(newValue) }
  }
  /// number of total bounding volumes in all bodies
  @inlinable
  public var nbvh: Int32 {
    get { Int32(_model.pointee.nbvh) }
    set { _model.pointee.nbvh = Int64(newValue) }
  }
  /// number of static bounding volumes (aabb stored in mjModel)
  @inlinable
  public var nbvhstatic: Int32 {
    get { Int32(_model.pointee.nbvhstatic) }
    set { _model.pointee.nbvhstatic = Int64(newValue) }
  }
  /// number of dynamic bounding volumes (aabb stored in mjData)
  @inlinable
  public var nbvhdynamic: Int32 {
    get { Int32(_model.pointee.nbvhdynamic) }
    set { _model.pointee.nbvhdynamic = Int64(newValue) }
  }
  /// number of total octree cells in all meshes
  @inlinable
  public var noct: Int32 {
    get { Int32(_model.pointee.noct) }
    set { _model.pointee.noct = Int64(newValue) }
  }
  /// number of joints
  @inlinable
  public var njnt: Int32 {
    get { Int32(_model.pointee.njnt) }
    set { _model.pointee.njnt = Int64(newValue) }
  }
  /// number of kinematic trees under world body
  @inlinable
  public var ntree: Int32 {
    get { Int32(_model.pointee.ntree) }
    set { _model.pointee.ntree = Int64(newValue) }
  }
  /// number of non-zeros in sparse inertia matrix
  @inlinable
  public var nM: Int32 {
    get { Int32(_model.pointee.nM) }
    set { _model.pointee.nM = Int64(newValue) }
  }
  /// number of non-zeros in sparse body-dof matrix
  @inlinable
  public var nB: Int32 {
    get { Int32(_model.pointee.nB) }
    set { _model.pointee.nB = Int64(newValue) }
  }
  /// number of non-zeros in sparse reduced dof-dof matrix
  @inlinable
  public var nC: Int32 {
    get { Int32(_model.pointee.nC) }
    set { _model.pointee.nC = Int64(newValue) }
  }
  /// number of non-zeros in sparse dof-dof matrix
  @inlinable
  public var nD: Int32 {
    get { Int32(_model.pointee.nD) }
    set { _model.pointee.nD = Int64(newValue) }
  }
  /// number of geoms
  @inlinable
  public var ngeom: Int32 {
    get { Int32(_model.pointee.ngeom) }
    set { _model.pointee.ngeom = Int64(newValue) }
  }
  /// number of sites
  @inlinable
  public var nsite: Int32 {
    get { Int32(_model.pointee.nsite) }
    set { _model.pointee.nsite = Int64(newValue) }
  }
  /// number of cameras
  @inlinable
  public var ncam: Int32 {
    get { Int32(_model.pointee.ncam) }
    set { _model.pointee.ncam = Int64(newValue) }
  }
  /// number of lights
  @inlinable
  public var nlight: Int32 {
    get { Int32(_model.pointee.nlight) }
    set { _model.pointee.nlight = Int64(newValue) }
  }
  /// number of flexes
  @inlinable
  public var nflex: Int32 {
    get { Int32(_model.pointee.nflex) }
    set { _model.pointee.nflex = Int64(newValue) }
  }
  /// number of dofs in all flexes
  @inlinable
  public var nflexnode: Int32 {
    get { Int32(_model.pointee.nflexnode) }
    set { _model.pointee.nflexnode = Int64(newValue) }
  }
  /// number of vertices in all flexes
  @inlinable
  public var nflexvert: Int32 {
    get { Int32(_model.pointee.nflexvert) }
    set { _model.pointee.nflexvert = Int64(newValue) }
  }
  /// number of edges in all flexes
  @inlinable
  public var nflexedge: Int32 {
    get { Int32(_model.pointee.nflexedge) }
    set { _model.pointee.nflexedge = Int64(newValue) }
  }
  /// number of elements in all flexes
  @inlinable
  public var nflexelem: Int32 {
    get { Int32(_model.pointee.nflexelem) }
    set { _model.pointee.nflexelem = Int64(newValue) }
  }
  /// number of element vertex ids in all flexes
  @inlinable
  public var nflexelemdata: Int32 {
    get { Int32(_model.pointee.nflexelemdata) }
    set { _model.pointee.nflexelemdata = Int64(newValue) }
  }
  /// number of stiffness parameters in all flexes
  @inlinable
  public var nflexstiffness: Int32 {
    get { Int32(_model.pointee.nflexstiffness) }
    set { _model.pointee.nflexstiffness = Int64(newValue) }
  }
  /// number of bending parameters in all flexes
  @inlinable
  public var nflexbending: Int32 {
    get { Int32(_model.pointee.nflexbending) }
    set { _model.pointee.nflexbending = Int64(newValue) }
  }
  /// number of element edge ids in all flexes
  @inlinable
  public var nflexelemedge: Int32 {
    get { Int32(_model.pointee.nflexelemedge) }
    set { _model.pointee.nflexelemedge = Int64(newValue) }
  }
  /// number of shell fragment vertex ids in all flexes
  @inlinable
  public var nflexshelldata: Int32 {
    get { Int32(_model.pointee.nflexshelldata) }
    set { _model.pointee.nflexshelldata = Int64(newValue) }
  }
  /// number of element-vertex pairs in all flexes
  @inlinable
  public var nflexevpair: Int32 {
    get { Int32(_model.pointee.nflexevpair) }
    set { _model.pointee.nflexevpair = Int64(newValue) }
  }
  /// number of vertices with texture coordinates
  @inlinable
  public var nflextexcoord: Int32 {
    get { Int32(_model.pointee.nflextexcoord) }
    set { _model.pointee.nflextexcoord = Int64(newValue) }
  }
  /// number of non-zeros in sparse flexedge Jacobian matrix
  @inlinable
  public var nJfe: Int32 {
    get { Int32(_model.pointee.nJfe) }
    set { _model.pointee.nJfe = Int64(newValue) }
  }
  /// number of non-zeros in sparse flexvert Jacobian matrix
  @inlinable
  public var nJfv: Int32 {
    get { Int32(_model.pointee.nJfv) }
    set { _model.pointee.nJfv = Int64(newValue) }
  }
  /// number of meshes
  @inlinable
  public var nmesh: Int32 {
    get { Int32(_model.pointee.nmesh) }
    set { _model.pointee.nmesh = Int64(newValue) }
  }
  /// number of vertices in all meshes
  @inlinable
  public var nmeshvert: Int32 {
    get { Int32(_model.pointee.nmeshvert) }
    set { _model.pointee.nmeshvert = Int64(newValue) }
  }
  /// number of normals in all meshes
  @inlinable
  public var nmeshnormal: Int32 {
    get { Int32(_model.pointee.nmeshnormal) }
    set { _model.pointee.nmeshnormal = Int64(newValue) }
  }
  /// number of texcoords in all meshes
  @inlinable
  public var nmeshtexcoord: Int32 {
    get { Int32(_model.pointee.nmeshtexcoord) }
    set { _model.pointee.nmeshtexcoord = Int64(newValue) }
  }
  /// number of triangular faces in all meshes
  @inlinable
  public var nmeshface: Int32 {
    get { Int32(_model.pointee.nmeshface) }
    set { _model.pointee.nmeshface = Int64(newValue) }
  }
  /// number of ints in mesh auxiliary data
  @inlinable
  public var nmeshgraph: Int32 {
    get { Int32(_model.pointee.nmeshgraph) }
    set { _model.pointee.nmeshgraph = Int64(newValue) }
  }
  /// number of polygons in all meshes
  @inlinable
  public var nmeshpoly: Int32 {
    get { Int32(_model.pointee.nmeshpoly) }
    set { _model.pointee.nmeshpoly = Int64(newValue) }
  }
  /// number of vertices in all polygons
  @inlinable
  public var nmeshpolyvert: Int32 {
    get { Int32(_model.pointee.nmeshpolyvert) }
    set { _model.pointee.nmeshpolyvert = Int64(newValue) }
  }
  /// number of polygons in vertex map
  @inlinable
  public var nmeshpolymap: Int32 {
    get { Int32(_model.pointee.nmeshpolymap) }
    set { _model.pointee.nmeshpolymap = Int64(newValue) }
  }
  /// number of skins
  @inlinable
  public var nskin: Int32 {
    get { Int32(_model.pointee.nskin) }
    set { _model.pointee.nskin = Int64(newValue) }
  }
  /// number of vertices in all skins
  @inlinable
  public var nskinvert: Int32 {
    get { Int32(_model.pointee.nskinvert) }
    set { _model.pointee.nskinvert = Int64(newValue) }
  }
  /// number of vertices with texcoords in all skins
  @inlinable
  public var nskintexvert: Int32 {
    get { Int32(_model.pointee.nskintexvert) }
    set { _model.pointee.nskintexvert = Int64(newValue) }
  }
  /// number of triangular faces in all skins
  @inlinable
  public var nskinface: Int32 {
    get { Int32(_model.pointee.nskinface) }
    set { _model.pointee.nskinface = Int64(newValue) }
  }
  /// number of bones in all skins
  @inlinable
  public var nskinbone: Int32 {
    get { Int32(_model.pointee.nskinbone) }
    set { _model.pointee.nskinbone = Int64(newValue) }
  }
  /// number of vertices in all skin bones
  @inlinable
  public var nskinbonevert: Int32 {
    get { Int32(_model.pointee.nskinbonevert) }
    set { _model.pointee.nskinbonevert = Int64(newValue) }
  }
  /// number of heightfields
  @inlinable
  public var nhfield: Int32 {
    get { Int32(_model.pointee.nhfield) }
    set { _model.pointee.nhfield = Int64(newValue) }
  }
  /// number of data points in all heightfields
  @inlinable
  public var nhfielddata: Int32 {
    get { Int32(_model.pointee.nhfielddata) }
    set { _model.pointee.nhfielddata = Int64(newValue) }
  }
  /// number of textures
  @inlinable
  public var ntex: Int32 {
    get { Int32(_model.pointee.ntex) }
    set { _model.pointee.ntex = Int64(newValue) }
  }
  /// number of bytes in texture rgb data
  @inlinable
  public var ntexdata: Int32 {
    get { Int32(_model.pointee.ntexdata) }
    set { _model.pointee.ntexdata = Int64(newValue) }
  }
  /// number of materials
  @inlinable
  public var nmat: Int32 {
    get { Int32(_model.pointee.nmat) }
    set { _model.pointee.nmat = Int64(newValue) }
  }
  /// number of predefined geom pairs
  @inlinable
  public var npair: Int32 {
    get { Int32(_model.pointee.npair) }
    set { _model.pointee.npair = Int64(newValue) }
  }
  /// number of excluded geom pairs
  @inlinable
  public var nexclude: Int32 {
    get { Int32(_model.pointee.nexclude) }
    set { _model.pointee.nexclude = Int64(newValue) }
  }
  /// number of equality constraints
  @inlinable
  public var neq: Int32 {
    get { Int32(_model.pointee.neq) }
    set { _model.pointee.neq = Int64(newValue) }
  }
  /// number of tendons
  @inlinable
  public var ntendon: Int32 {
    get { Int32(_model.pointee.ntendon) }
    set { _model.pointee.ntendon = Int64(newValue) }
  }
  /// number of non-zeros in sparse ten_J matrix
  @inlinable
  public var nJten: Int32 {
    get { Int32(_model.pointee.nJten) }
    set { _model.pointee.nJten = Int64(newValue) }
  }
  /// number of wrap objects in all tendon paths
  @inlinable
  public var nwrap: Int32 {
    get { Int32(_model.pointee.nwrap) }
    set { _model.pointee.nwrap = Int64(newValue) }
  }
  /// number of sensors
  @inlinable
  public var nsensor: Int32 {
    get { Int32(_model.pointee.nsensor) }
    set { _model.pointee.nsensor = Int64(newValue) }
  }
  /// number of numeric custom fields
  @inlinable
  public var nnumeric: Int32 {
    get { Int32(_model.pointee.nnumeric) }
    set { _model.pointee.nnumeric = Int64(newValue) }
  }
  /// number of mjtNums in all numeric fields
  @inlinable
  public var nnumericdata: Int32 {
    get { Int32(_model.pointee.nnumericdata) }
    set { _model.pointee.nnumericdata = Int64(newValue) }
  }
  /// number of text custom fields
  @inlinable
  public var ntext: Int32 {
    get { Int32(_model.pointee.ntext) }
    set { _model.pointee.ntext = Int64(newValue) }
  }
  /// number of mjtBytes in all text fields
  @inlinable
  public var ntextdata: Int32 {
    get { Int32(_model.pointee.ntextdata) }
    set { _model.pointee.ntextdata = Int64(newValue) }
  }
  /// number of tuple custom fields
  @inlinable
  public var ntuple: Int32 {
    get { Int32(_model.pointee.ntuple) }
    set { _model.pointee.ntuple = Int64(newValue) }
  }
  /// number of objects in all tuple fields
  @inlinable
  public var ntupledata: Int32 {
    get { Int32(_model.pointee.ntupledata) }
    set { _model.pointee.ntupledata = Int64(newValue) }
  }
  /// number of keyframes
  @inlinable
  public var nkey: Int32 {
    get { Int32(_model.pointee.nkey) }
    set { _model.pointee.nkey = Int64(newValue) }
  }
  /// number of mocap bodies
  @inlinable
  public var nmocap: Int32 {
    get { Int32(_model.pointee.nmocap) }
    set { _model.pointee.nmocap = Int64(newValue) }
  }
  /// number of plugin instances
  @inlinable
  public var nplugin: Int32 {
    get { Int32(_model.pointee.nplugin) }
    set { _model.pointee.nplugin = Int64(newValue) }
  }
  /// number of chars in all plugin config attributes
  @inlinable
  public var npluginattr: Int32 {
    get { Int32(_model.pointee.npluginattr) }
    set { _model.pointee.npluginattr = Int64(newValue) }
  }
  /// number of mjtNums in body_user
  @inlinable
  public var nuserBody: Int32 {
    get { Int32(_model.pointee.nuser_body) }
    set { _model.pointee.nuser_body = Int64(newValue) }
  }
  /// number of mjtNums in jnt_user
  @inlinable
  public var nuserJnt: Int32 {
    get { Int32(_model.pointee.nuser_jnt) }
    set { _model.pointee.nuser_jnt = Int64(newValue) }
  }
  /// number of mjtNums in geom_user
  @inlinable
  public var nuserGeom: Int32 {
    get { Int32(_model.pointee.nuser_geom) }
    set { _model.pointee.nuser_geom = Int64(newValue) }
  }
  /// number of mjtNums in site_user
  @inlinable
  public var nuserSite: Int32 {
    get { Int32(_model.pointee.nuser_site) }
    set { _model.pointee.nuser_site = Int64(newValue) }
  }
  /// number of mjtNums in cam_user
  @inlinable
  public var nuserCam: Int32 {
    get { Int32(_model.pointee.nuser_cam) }
    set { _model.pointee.nuser_cam = Int64(newValue) }
  }
  /// number of mjtNums in tendon_user
  @inlinable
  public var nuserTendon: Int32 {
    get { Int32(_model.pointee.nuser_tendon) }
    set { _model.pointee.nuser_tendon = Int64(newValue) }
  }
  /// number of mjtNums in actuator_user
  @inlinable
  public var nuserActuator: Int32 {
    get { Int32(_model.pointee.nuser_actuator) }
    set { _model.pointee.nuser_actuator = Int64(newValue) }
  }
  /// number of mjtNums in sensor_user
  @inlinable
  public var nuserSensor: Int32 {
    get { Int32(_model.pointee.nuser_sensor) }
    set { _model.pointee.nuser_sensor = Int64(newValue) }
  }
  /// number of chars in all names
  @inlinable
  public var nnames: Int32 {
    get { Int32(_model.pointee.nnames) }
    set { _model.pointee.nnames = Int64(newValue) }
  }
  /// number of chars in all paths
  @inlinable
  public var npaths: Int32 {
    get { Int32(_model.pointee.npaths) }
    set { _model.pointee.npaths = Int64(newValue) }
  }
  /// number of slots in the names hash map
  @inlinable
  public var nnamesMap: Int32 {
    get { Int32(_model.pointee.nnames_map) }
    set { _model.pointee.nnames_map = Int64(newValue) }
  }
  /// number of non-zeros in sparse actuator_moment matrix
  @inlinable
  public var nJmom: Int32 {
    get { Int32(_model.pointee.nJmom) }
    set { _model.pointee.nJmom = Int64(newValue) }
  }
  /// number of bodies with nonzero gravcomp
  @inlinable
  public var ngravcomp: Int32 {
    get { Int32(_model.pointee.ngravcomp) }
    set { _model.pointee.ngravcomp = Int64(newValue) }
  }
  /// number of potential equality-constraint rows
  @inlinable
  public var nemax: Int32 {
    get { Int32(_model.pointee.nemax) }
    set { _model.pointee.nemax = Int64(newValue) }
  }
  /// number of available rows in constraint Jacobian (legacy)
  @inlinable
  public var njmax: Int32 {
    get { Int32(_model.pointee.njmax) }
    set { _model.pointee.njmax = Int64(newValue) }
  }
  /// number of potential contacts in contact list (legacy)
  @inlinable
  public var nconmax: Int32 {
    get { Int32(_model.pointee.nconmax) }
    set { _model.pointee.nconmax = Int64(newValue) }
  }
  /// number of mjtNums reserved for the user
  @inlinable
  public var nuserdata: Int32 {
    get { Int32(_model.pointee.nuserdata) }
    set { _model.pointee.nuserdata = Int64(newValue) }
  }
  /// number of mjtNums in sensor data vector
  @inlinable
  public var nsensordata: Int32 {
    get { Int32(_model.pointee.nsensordata) }
    set { _model.pointee.nsensordata = Int64(newValue) }
  }
  /// number of mjtNums in plugin state vector
  @inlinable
  public var npluginstate: Int32 {
    get { Int32(_model.pointee.npluginstate) }
    set { _model.pointee.npluginstate = Int64(newValue) }
  }
  /// number of mjtNums in history buffer
  @inlinable
  public var nhistory: Int32 {
    get { Int32(_model.pointee.nhistory) }
    set { _model.pointee.nhistory = Int64(newValue) }
  }
  /// number of bytes in the mjData arena (inclusive of stack)
  @inlinable
  public var narena: Int32 {
    get { Int32(_model.pointee.narena) }
    set { _model.pointee.narena = Int64(newValue) }
  }
  /// number of bytes in buffer
  @inlinable
  public var nbuffer: Int32 {
    get { Int32(_model.pointee.nbuffer) }
    set { _model.pointee.nbuffer = Int64(newValue) }
  }
  /// physics options
  @inlinable
  public var opt: MjOption {
    get { MjOption(_model.pointee.opt) }
    set { _model.pointee.opt = newValue._option }
  }
  /// visualization options
  @inlinable
  public var vis: MjVisual {
    get { MjVisual(_model.pointee.vis) }
    set { _model.pointee.vis = newValue._visual }
  }
  /// model statistics
  @inlinable
  public var stat: MjStatistic {
    get { _model.pointee.stat }
    set { _model.pointee.stat = newValue }
  }
  /// qpos values at default pose              (nq x 1)
  @inlinable
  public var qpos0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.qpos0, object: _storage, len: nq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.qpos0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nq * 1))
    }
  }
  /// reference pose for springs               (nq x 1)
  @inlinable
  public var qposSpring: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.qpos_spring, object: _storage, len: nq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.qpos_spring
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nq * 1))
    }
  }
  /// id of body's parent                      (nbody x 1)
  @inlinable
  public var bodyParentid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_parentid, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_parentid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// ancestor that is direct child of world   (nbody x 1)
  @inlinable
  public var bodyRootid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_rootid, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_rootid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// top ancestor with no dofs to this body   (nbody x 1)
  @inlinable
  public var bodyWeldid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_weldid, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_weldid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// id of mocap data; -1: none               (nbody x 1)
  @inlinable
  public var bodyMocapid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_mocapid, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_mocapid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// number of joints for this body           (nbody x 1)
  @inlinable
  public var bodyJntnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_jntnum, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_jntnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// start addr of joints; -1: no joints      (nbody x 1)
  @inlinable
  public var bodyJntadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_jntadr, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_jntadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// number of motion degrees of freedom      (nbody x 1)
  @inlinable
  public var bodyDofnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_dofnum, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_dofnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// start addr of dofs; -1: no dofs          (nbody x 1)
  @inlinable
  public var bodyDofadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_dofadr, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_dofadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// id of body's kinematic tree; -1: static  (nbody x 1)
  @inlinable
  public var bodyTreeid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_treeid, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_treeid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// number of geoms                          (nbody x 1)
  @inlinable
  public var bodyGeomnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_geomnum, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_geomnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// start addr of geoms; -1: no geoms        (nbody x 1)
  @inlinable
  public var bodyGeomadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_geomadr, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_geomadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// 1: diag M; 2: diag M, sliders only       (nbody x 1)
  @inlinable
  public var bodySimple: MjArray<UInt8> {
    get { MjArray<UInt8>(array: _model.pointee.body_simple, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<UInt8> = _model.pointee.body_simple
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// same frame as inertia (mjtSameframe)     (nbody x 1)
  @inlinable
  public var bodySameframe: MjArray<UInt8> {
    get { MjArray<UInt8>(array: _model.pointee.body_sameframe, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<UInt8> = _model.pointee.body_sameframe
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// position offset rel. to parent body      (nbody x 3)
  @inlinable
  public var bodyPos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_pos, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// orientation offset rel. to parent body   (nbody x 4)
  @inlinable
  public var bodyQuat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_quat, object: _storage, len: nbody * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_quat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 4))
    }
  }
  /// local position of center of mass         (nbody x 3)
  @inlinable
  public var bodyIpos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_ipos, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_ipos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// local orientation of inertia ellipsoid   (nbody x 4)
  @inlinable
  public var bodyIquat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_iquat, object: _storage, len: nbody * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_iquat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 4))
    }
  }
  /// mass                                     (nbody x 1)
  @inlinable
  public var bodyMass: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_mass, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_mass
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// mass of subtree starting at this body    (nbody x 1)
  @inlinable
  public var bodySubtreemass: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_subtreemass, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_subtreemass
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// diagonal inertia in ipos/iquat frame     (nbody x 3)
  @inlinable
  public var bodyInertia: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_inertia, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_inertia
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// mean inv inert in qpos0 (trn, rot)       (nbody x 2)
  @inlinable
  public var bodyInvweight0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_invweight0, object: _storage, len: nbody * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_invweight0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 2))
    }
  }
  /// antigravity force, units of body weight  (nbody x 1)
  @inlinable
  public var bodyGravcomp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_gravcomp, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_gravcomp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// MAX over all geom margins                (nbody x 1)
  @inlinable
  public var bodyMargin: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_margin, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// user data                                (nbody x nuser_body)
  @inlinable
  public var bodyUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.body_user, object: _storage, len: nbody * nuserBody) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.body_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * nuserBody))
    }
  }
  /// plugin instance id; -1: not in use       (nbody x 1)
  @inlinable
  public var bodyPlugin: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_plugin, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_plugin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// OR over all geom contypes                (nbody x 1)
  @inlinable
  public var bodyContype: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_contype, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_contype
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// OR over all geom conaffinities           (nbody x 1)
  @inlinable
  public var bodyConaffinity: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_conaffinity, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_conaffinity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// address of bvh root                      (nbody x 1)
  @inlinable
  public var bodyBvhadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_bvhadr, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_bvhadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// number of bounding volumes               (nbody x 1)
  @inlinable
  public var bodyBvhnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.body_bvhnum, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.body_bvhnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// depth in the bounding volume hierarchy   (nbvh x 1)
  @inlinable
  public var bvhDepth: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.bvh_depth, object: _storage, len: nbvh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.bvh_depth
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbvh * 1))
    }
  }
  /// left and right children in tree          (nbvh x 2)
  @inlinable
  public var bvhChild: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.bvh_child, object: _storage, len: nbvh * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.bvh_child
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbvh * 2))
    }
  }
  /// geom or elem id of node; -1: non-leaf    (nbvh x 1)
  @inlinable
  public var bvhNodeid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.bvh_nodeid, object: _storage, len: nbvh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.bvh_nodeid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbvh * 1))
    }
  }
  /// local bounding box (center, size)        (nbvhstatic x 6)
  @inlinable
  public var bvhAabb: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.bvh_aabb, object: _storage, len: nbvhstatic * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.bvh_aabb
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbvhstatic * 6))
    }
  }
  /// depth in the octree                      (noct x 1)
  @inlinable
  public var octDepth: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.oct_depth, object: _storage, len: noct * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.oct_depth
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(noct * 1))
    }
  }
  /// children of octree node                  (noct x 8)
  @inlinable
  public var octChild: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.oct_child, object: _storage, len: noct * 8) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.oct_child
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(noct * 8))
    }
  }
  /// octree node bounding box (center, size)  (noct x 6)
  @inlinable
  public var octAabb: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.oct_aabb, object: _storage, len: noct * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.oct_aabb
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(noct * 6))
    }
  }
  /// octree interpolation coefficients        (noct x 8)
  @inlinable
  public var octCoeff: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.oct_coeff, object: _storage, len: noct * 8) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.oct_coeff
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(noct * 8))
    }
  }
  /// type of joint (mjtJoint)                 (njnt x 1)
  @inlinable
  public var jntType: MjArray<MjtJoint> {
    get { MjArray<MjtJoint>(array: UnsafeMutableRawPointer(_model.pointee.jnt_type).assumingMemoryBound(to: MjtJoint.self), object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtJoint> = UnsafeMutableRawPointer(_model.pointee.jnt_type).assumingMemoryBound(to: MjtJoint.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// start addr in 'qpos' for joint's data    (njnt x 1)
  @inlinable
  public var jntQposadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.jnt_qposadr, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.jnt_qposadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// start addr in 'qvel' for joint's data    (njnt x 1)
  @inlinable
  public var jntDofadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.jnt_dofadr, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.jnt_dofadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// id of joint's body                       (njnt x 1)
  @inlinable
  public var jntBodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.jnt_bodyid, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.jnt_bodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// actuator contributing damping / armature (njnt x 1)
  @inlinable
  public var jntActuatorid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.jnt_actuatorid, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.jnt_actuatorid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// group for visibility                     (njnt x 1)
  @inlinable
  public var jntGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.jnt_group, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.jnt_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// does joint have limits                   (njnt x 1)
  @inlinable
  public var jntLimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.jnt_limited, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.jnt_limited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// does joint have actuator force limits    (njnt x 1)
  @inlinable
  public var jntActfrclimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.jnt_actfrclimited, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.jnt_actfrclimited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// is gravcomp force applied via actuators  (njnt x 1)
  @inlinable
  public var jntActgravcomp: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.jnt_actgravcomp, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.jnt_actgravcomp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// constraint solver reference: limit       (njnt x mjNREF)
  @inlinable
  public var jntSolref: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_solref, object: _storage, len: njnt * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_solref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 2))
    }
  }
  /// constraint solver impedance: limit       (njnt x mjNIMP)
  @inlinable
  public var jntSolimp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_solimp, object: _storage, len: njnt * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_solimp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 5))
    }
  }
  /// local anchor position                    (njnt x 3)
  @inlinable
  public var jntPos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_pos, object: _storage, len: njnt * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 3))
    }
  }
  /// local joint axis                         (njnt x 3)
  @inlinable
  public var jntAxis: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_axis, object: _storage, len: njnt * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_axis
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 3))
    }
  }
  /// linear stiffness coefficient             (njnt x 1)
  @inlinable
  public var jntStiffness: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_stiffness, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_stiffness
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// high-order stiffness coefficients        (njnt x mjNPOLY)
  @inlinable
  public var jntStiffnesspoly: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_stiffnesspoly, object: _storage, len: njnt * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_stiffnesspoly
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 2))
    }
  }
  /// joint limits                             (njnt x 2)
  @inlinable
  public var jntRange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_range, object: _storage, len: njnt * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_range
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 2))
    }
  }
  /// range of total actuator force            (njnt x 2)
  @inlinable
  public var jntActfrcrange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_actfrcrange, object: _storage, len: njnt * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_actfrcrange
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 2))
    }
  }
  /// min distance for limit detection         (njnt x 1)
  @inlinable
  public var jntMargin: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_margin, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// user data                                (njnt x nuser_jnt)
  @inlinable
  public var jntUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.jnt_user, object: _storage, len: njnt * nuserJnt) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.jnt_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * nuserJnt))
    }
  }
  /// id of dof's body                         (nv x 1)
  @inlinable
  public var dofBodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.dof_bodyid, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.dof_bodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// id of dof's joint                        (nv x 1)
  @inlinable
  public var dofJntid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.dof_jntid, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.dof_jntid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// id of dof's parent; -1: none             (nv x 1)
  @inlinable
  public var dofParentid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.dof_parentid, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.dof_parentid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// id of dof's kinematic tree               (nv x 1)
  @inlinable
  public var dofTreeid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.dof_treeid, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.dof_treeid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// dof address in M-diagonal                (nv x 1)
  @inlinable
  public var dofMadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.dof_Madr, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.dof_Madr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// number of consecutive simple dofs        (nv x 1)
  @inlinable
  public var dofSimplenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.dof_simplenum, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.dof_simplenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// constraint solver reference:frictionloss (nv x mjNREF)
  @inlinable
  public var dofSolref: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_solref, object: _storage, len: nv * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_solref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 2))
    }
  }
  /// constraint solver impedance:frictionloss (nv x mjNIMP)
  @inlinable
  public var dofSolimp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_solimp, object: _storage, len: nv * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_solimp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 5))
    }
  }
  /// dof friction loss                        (nv x 1)
  @inlinable
  public var dofFrictionloss: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_frictionloss, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_frictionloss
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// dof armature inertia/mass                (nv x 1)
  @inlinable
  public var dofArmature: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_armature, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_armature
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// linear damping coefficient               (nv x 1)
  @inlinable
  public var dofDamping: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_damping, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_damping
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// high-order damping coefficients          (nv x mjNPOLY)
  @inlinable
  public var dofDampingpoly: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_dampingpoly, object: _storage, len: nv * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_dampingpoly
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 2))
    }
  }
  /// diag. inverse inertia in qpos0           (nv x 1)
  @inlinable
  public var dofInvweight0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_invweight0, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_invweight0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// diag. inertia in qpos0                   (nv x 1)
  @inlinable
  public var dofM0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_M0, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_M0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// linear: 1; angular: approx. length scale (nv x 1)
  @inlinable
  public var dofLength: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.dof_length, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.dof_length
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// start addr of bodies                     (ntree x 1)
  @inlinable
  public var treeBodyadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tree_bodyadr, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tree_bodyadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// number of bodies in tree                 (ntree x 1)
  @inlinable
  public var treeBodynum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tree_bodynum, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tree_bodynum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// start addr of dofs                       (ntree x 1)
  @inlinable
  public var treeDofadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tree_dofadr, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tree_dofadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// number of dofs in tree                   (ntree x 1)
  @inlinable
  public var treeDofnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tree_dofnum, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tree_dofnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// sleep policy (mjtSleepPolicy)            (ntree x 1)
  @inlinable
  public var treeSleepPolicy: MjArray<MjtSleepPolicy> {
    get { MjArray<MjtSleepPolicy>(array: UnsafeMutableRawPointer(_model.pointee.tree_sleep_policy).assumingMemoryBound(to: MjtSleepPolicy.self), object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtSleepPolicy> = UnsafeMutableRawPointer(_model.pointee.tree_sleep_policy).assumingMemoryBound(to: MjtSleepPolicy.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// geometric type (mjtGeom)                 (ngeom x 1)
  @inlinable
  public var geomType: MjArray<MjtGeom> {
    get { MjArray<MjtGeom>(array: UnsafeMutableRawPointer(_model.pointee.geom_type).assumingMemoryBound(to: MjtGeom.self), object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtGeom> = UnsafeMutableRawPointer(_model.pointee.geom_type).assumingMemoryBound(to: MjtGeom.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// geom contact type                        (ngeom x 1)
  @inlinable
  public var geomContype: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_contype, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_contype
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// geom contact affinity                    (ngeom x 1)
  @inlinable
  public var geomConaffinity: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_conaffinity, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_conaffinity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// contact dimensionality (1, 3, 4, 6)      (ngeom x 1)
  @inlinable
  public var geomCondim: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_condim, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_condim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// id of geom's body                        (ngeom x 1)
  @inlinable
  public var geomBodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_bodyid, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_bodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// id of geom's mesh/hfield; -1: none       (ngeom x 1)
  @inlinable
  public var geomDataid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_dataid, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_dataid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// material id for rendering; -1: none      (ngeom x 1)
  @inlinable
  public var geomMatid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_matid, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_matid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// group for visibility                     (ngeom x 1)
  @inlinable
  public var geomGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_group, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// geom contact priority                    (ngeom x 1)
  @inlinable
  public var geomPriority: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_priority, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_priority
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// plugin instance id; -1: not in use       (ngeom x 1)
  @inlinable
  public var geomPlugin: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.geom_plugin, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.geom_plugin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// same frame as body (mjtSameframe)        (ngeom x 1)
  @inlinable
  public var geomSameframe: MjArray<UInt8> {
    get { MjArray<UInt8>(array: _model.pointee.geom_sameframe, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<UInt8> = _model.pointee.geom_sameframe
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// mixing coef for solref/imp in geom pair  (ngeom x 1)
  @inlinable
  public var geomSolmix: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_solmix, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_solmix
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// constraint solver reference: contact     (ngeom x mjNREF)
  @inlinable
  public var geomSolref: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_solref, object: _storage, len: ngeom * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_solref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 2))
    }
  }
  /// constraint solver impedance: contact     (ngeom x mjNIMP)
  @inlinable
  public var geomSolimp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_solimp, object: _storage, len: ngeom * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_solimp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 5))
    }
  }
  /// geom-specific size parameters            (ngeom x 3)
  @inlinable
  public var geomSize: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_size, object: _storage, len: ngeom * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 3))
    }
  }
  /// bounding box, (center, size)             (ngeom x 6)
  @inlinable
  public var geomAabb: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_aabb, object: _storage, len: ngeom * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_aabb
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 6))
    }
  }
  /// radius of bounding sphere                (ngeom x 1)
  @inlinable
  public var geomRbound: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_rbound, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_rbound
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// local position offset rel. to body       (ngeom x 3)
  @inlinable
  public var geomPos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_pos, object: _storage, len: ngeom * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 3))
    }
  }
  /// local orientation offset rel. to body    (ngeom x 4)
  @inlinable
  public var geomQuat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_quat, object: _storage, len: ngeom * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_quat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 4))
    }
  }
  /// friction for (slide, spin, roll)         (ngeom x 3)
  @inlinable
  public var geomFriction: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_friction, object: _storage, len: ngeom * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_friction
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 3))
    }
  }
  /// geometric inflation for contact          (ngeom x 1)
  @inlinable
  public var geomMargin: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_margin, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// additional contact detection buffer      (ngeom x 1)
  @inlinable
  public var geomGap: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_gap, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_gap
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// fluid interaction parameters             (ngeom x mjNFLUID)
  @inlinable
  public var geomFluid: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_fluid, object: _storage, len: ngeom * 12) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_fluid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 12))
    }
  }
  /// user data                                (ngeom x nuser_geom)
  @inlinable
  public var geomUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.geom_user, object: _storage, len: ngeom * nuserGeom) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.geom_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * nuserGeom))
    }
  }
  /// rgba when material is omitted            (ngeom x 4)
  @inlinable
  public var geomRgba: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.geom_rgba, object: _storage, len: ngeom * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.geom_rgba
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 4))
    }
  }
  /// geom type for rendering (mjtGeom)        (nsite x 1)
  @inlinable
  public var siteType: MjArray<MjtGeom> {
    get { MjArray<MjtGeom>(array: UnsafeMutableRawPointer(_model.pointee.site_type).assumingMemoryBound(to: MjtGeom.self), object: _storage, len: nsite * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtGeom> = UnsafeMutableRawPointer(_model.pointee.site_type).assumingMemoryBound(to: MjtGeom.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 1))
    }
  }
  /// id of site's body                        (nsite x 1)
  @inlinable
  public var siteBodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.site_bodyid, object: _storage, len: nsite * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.site_bodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 1))
    }
  }
  /// material id for rendering; -1: none      (nsite x 1)
  @inlinable
  public var siteMatid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.site_matid, object: _storage, len: nsite * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.site_matid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 1))
    }
  }
  /// group for visibility                     (nsite x 1)
  @inlinable
  public var siteGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.site_group, object: _storage, len: nsite * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.site_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 1))
    }
  }
  /// same frame as body (mjtSameframe)        (nsite x 1)
  @inlinable
  public var siteSameframe: MjArray<UInt8> {
    get { MjArray<UInt8>(array: _model.pointee.site_sameframe, object: _storage, len: nsite * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<UInt8> = _model.pointee.site_sameframe
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 1))
    }
  }
  /// geom size for rendering                  (nsite x 3)
  @inlinable
  public var siteSize: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.site_size, object: _storage, len: nsite * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.site_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 3))
    }
  }
  /// local position offset rel. to body       (nsite x 3)
  @inlinable
  public var sitePos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.site_pos, object: _storage, len: nsite * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.site_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 3))
    }
  }
  /// local orientation offset rel. to body    (nsite x 4)
  @inlinable
  public var siteQuat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.site_quat, object: _storage, len: nsite * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.site_quat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 4))
    }
  }
  /// user data                                (nsite x nuser_site)
  @inlinable
  public var siteUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.site_user, object: _storage, len: nsite * nuserSite) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.site_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * nuserSite))
    }
  }
  /// rgba when material is omitted            (nsite x 4)
  @inlinable
  public var siteRgba: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.site_rgba, object: _storage, len: nsite * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.site_rgba
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 4))
    }
  }
  /// camera tracking mode (mjtCamLight)       (ncam x 1)
  @inlinable
  public var camMode: MjArray<MjtCamLight> {
    get { MjArray<MjtCamLight>(array: UnsafeMutableRawPointer(_model.pointee.cam_mode).assumingMemoryBound(to: MjtCamLight.self), object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtCamLight> = UnsafeMutableRawPointer(_model.pointee.cam_mode).assumingMemoryBound(to: MjtCamLight.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// id of camera's body                      (ncam x 1)
  @inlinable
  public var camBodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.cam_bodyid, object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.cam_bodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// id of targeted body; -1: none            (ncam x 1)
  @inlinable
  public var camTargetbodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.cam_targetbodyid, object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.cam_targetbodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// position rel. to body frame              (ncam x 3)
  @inlinable
  public var camPos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_pos, object: _storage, len: ncam * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 3))
    }
  }
  /// orientation rel. to body frame           (ncam x 4)
  @inlinable
  public var camQuat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_quat, object: _storage, len: ncam * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_quat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 4))
    }
  }
  /// global position rel. to sub-com in qpos0 (ncam x 3)
  @inlinable
  public var camPoscom0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_poscom0, object: _storage, len: ncam * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_poscom0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 3))
    }
  }
  /// global position rel. to body in qpos0    (ncam x 3)
  @inlinable
  public var camPos0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_pos0, object: _storage, len: ncam * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_pos0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 3))
    }
  }
  /// global orientation in qpos0              (ncam x 9)
  @inlinable
  public var camMat0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_mat0, object: _storage, len: ncam * 9) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_mat0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 9))
    }
  }
  /// projection type (mjtProjection)          (ncam x 1)
  @inlinable
  public var camProjection: MjArray<MjtProjection> {
    get { MjArray<MjtProjection>(array: UnsafeMutableRawPointer(_model.pointee.cam_projection).assumingMemoryBound(to: MjtProjection.self), object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtProjection> = UnsafeMutableRawPointer(_model.pointee.cam_projection).assumingMemoryBound(to: MjtProjection.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// y field-of-view (ortho ? len : deg)      (ncam x 1)
  @inlinable
  public var camFovy: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_fovy, object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_fovy
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// inter-pupilary distance                  (ncam x 1)
  @inlinable
  public var camIpd: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_ipd, object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_ipd
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// resolution: pixels [width, height]       (ncam x 2)
  @inlinable
  public var camResolution: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.cam_resolution, object: _storage, len: ncam * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.cam_resolution
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 2))
    }
  }
  /// output types (mjtCamOut bit flags)       (ncam x 1)
  @inlinable
  public var camOutput: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.cam_output, object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.cam_output
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// sensor size: length [width, height]      (ncam x 2)
  @inlinable
  public var camSensorsize: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.cam_sensorsize, object: _storage, len: ncam * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.cam_sensorsize
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 2))
    }
  }
  /// [focal length; principal point]          (ncam x 4)
  @inlinable
  public var camIntrinsic: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.cam_intrinsic, object: _storage, len: ncam * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.cam_intrinsic
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 4))
    }
  }
  /// user data                                (ncam x nuser_cam)
  @inlinable
  public var camUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.cam_user, object: _storage, len: ncam * nuserCam) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.cam_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * nuserCam))
    }
  }
  /// light tracking mode (mjtCamLight)        (nlight x 1)
  @inlinable
  public var lightMode: MjArray<MjtCamLight> {
    get { MjArray<MjtCamLight>(array: UnsafeMutableRawPointer(_model.pointee.light_mode).assumingMemoryBound(to: MjtCamLight.self), object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtCamLight> = UnsafeMutableRawPointer(_model.pointee.light_mode).assumingMemoryBound(to: MjtCamLight.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// id of light's body                       (nlight x 1)
  @inlinable
  public var lightBodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.light_bodyid, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.light_bodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// id of targeted body; -1: none            (nlight x 1)
  @inlinable
  public var lightTargetbodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.light_targetbodyid, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.light_targetbodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// spot, directional, etc. (mjtLightType)   (nlight x 1)
  @inlinable
  public var lightType: MjArray<MjtLightType> {
    get { MjArray<MjtLightType>(array: UnsafeMutableRawPointer(_model.pointee.light_type).assumingMemoryBound(to: MjtLightType.self), object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtLightType> = UnsafeMutableRawPointer(_model.pointee.light_type).assumingMemoryBound(to: MjtLightType.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// texture id for image lights              (nlight x 1)
  @inlinable
  public var lightTexid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.light_texid, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.light_texid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// does light cast shadows                  (nlight x 1)
  @inlinable
  public var lightCastshadow: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.light_castshadow, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.light_castshadow
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// light radius for soft shadows            (nlight x 1)
  @inlinable
  public var lightBulbradius: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_bulbradius, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_bulbradius
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// intensity, in candela                    (nlight x 1)
  @inlinable
  public var lightIntensity: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_intensity, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_intensity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// range of effectiveness                   (nlight x 1)
  @inlinable
  public var lightRange: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_range, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_range
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// is light on                              (nlight x 1)
  @inlinable
  public var lightActive: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.light_active, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.light_active
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// position rel. to body frame              (nlight x 3)
  @inlinable
  public var lightPos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.light_pos, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.light_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// direction rel. to body frame             (nlight x 3)
  @inlinable
  public var lightDir: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.light_dir, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.light_dir
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// global position rel. to sub-com in qpos0 (nlight x 3)
  @inlinable
  public var lightPoscom0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.light_poscom0, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.light_poscom0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// global position rel. to body in qpos0    (nlight x 3)
  @inlinable
  public var lightPos0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.light_pos0, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.light_pos0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// global direction in qpos0                (nlight x 3)
  @inlinable
  public var lightDir0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.light_dir0, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.light_dir0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// OpenGL attenuation (quadratic model)     (nlight x 3)
  @inlinable
  public var lightAttenuation: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_attenuation, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_attenuation
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// OpenGL cutoff                            (nlight x 1)
  @inlinable
  public var lightCutoff: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_cutoff, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_cutoff
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// OpenGL exponent                          (nlight x 1)
  @inlinable
  public var lightExponent: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_exponent, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_exponent
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// ambient rgb (alpha=1)                    (nlight x 3)
  @inlinable
  public var lightAmbient: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_ambient, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_ambient
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// diffuse rgb (alpha=1)                    (nlight x 3)
  @inlinable
  public var lightDiffuse: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_diffuse, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_diffuse
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// specular rgb (alpha=1)                   (nlight x 3)
  @inlinable
  public var lightSpecular: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.light_specular, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.light_specular
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// flex contact type                        (nflex x 1)
  @inlinable
  public var flexContype: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_contype, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_contype
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// flex contact affinity                    (nflex x 1)
  @inlinable
  public var flexConaffinity: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_conaffinity, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_conaffinity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// contact dimensionality (1, 3, 4, 6)      (nflex x 1)
  @inlinable
  public var flexCondim: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_condim, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_condim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// flex contact priority                    (nflex x 1)
  @inlinable
  public var flexPriority: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_priority, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_priority
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// mix coef for solref/imp in contact pair  (nflex x 1)
  @inlinable
  public var flexSolmix: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_solmix, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_solmix
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// constraint solver reference: contact     (nflex x mjNREF)
  @inlinable
  public var flexSolref: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_solref, object: _storage, len: nflex * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_solref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 2))
    }
  }
  /// constraint solver impedance: contact     (nflex x mjNIMP)
  @inlinable
  public var flexSolimp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_solimp, object: _storage, len: nflex * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_solimp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 5))
    }
  }
  /// friction for (slide, spin, roll)         (nflex x 3)
  @inlinable
  public var flexFriction: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_friction, object: _storage, len: nflex * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_friction
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 3))
    }
  }
  /// geometric inflation for contact          (nflex x 1)
  @inlinable
  public var flexMargin: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_margin, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// additional contact detection buffer      (nflex x 1)
  @inlinable
  public var flexGap: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_gap, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_gap
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// internal flex collision enabled          (nflex x 1)
  @inlinable
  public var flexInternal: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.flex_internal, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.flex_internal
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// self collision mode (mjtFlexSelf)        (nflex x 1)
  @inlinable
  public var flexSelfcollide: MjArray<MjtFlexSelf> {
    get { MjArray<MjtFlexSelf>(array: UnsafeMutableRawPointer(_model.pointee.flex_selfcollide).assumingMemoryBound(to: MjtFlexSelf.self), object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtFlexSelf> = UnsafeMutableRawPointer(_model.pointee.flex_selfcollide).assumingMemoryBound(to: MjtFlexSelf.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of active element layers, 3D only (nflex x 1)
  @inlinable
  public var flexActivelayers: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_activelayers, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_activelayers
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// passive collisions enabled               (nflex x 1)
  @inlinable
  public var flexPassive: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_passive, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_passive
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// 1: lines, 2: triangles, 3: tetrahedra    (nflex x 1)
  @inlinable
  public var flexDim: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_dim, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_dim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// material id for rendering                (nflex x 1)
  @inlinable
  public var flexMatid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_matid, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_matid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// group for visibility                     (nflex x 1)
  @inlinable
  public var flexGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_group, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// interpolation (0: vertex, 1: nodes)      (nflex x 1)
  @inlinable
  public var flexInterp: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_interp, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_interp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// finite cell num per dimension            (nflex x 3)
  @inlinable
  public var flexCellnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_cellnum, object: _storage, len: nflex * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_cellnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 3))
    }
  }
  /// first node address                       (nflex x 1)
  @inlinable
  public var flexNodeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_nodeadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_nodeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of nodes                          (nflex x 1)
  @inlinable
  public var flexNodenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_nodenum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_nodenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first vertex address                     (nflex x 1)
  @inlinable
  public var flexVertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_vertadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_vertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of vertices                       (nflex x 1)
  @inlinable
  public var flexVertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_vertnum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_vertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first edge address                       (nflex x 1)
  @inlinable
  public var flexEdgeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_edgeadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_edgeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of edges                          (nflex x 1)
  @inlinable
  public var flexEdgenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_edgenum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_edgenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first element address                    (nflex x 1)
  @inlinable
  public var flexElemadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of elements                       (nflex x 1)
  @inlinable
  public var flexElemnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemnum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first element vertex id address          (nflex x 1)
  @inlinable
  public var flexElemdataadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemdataadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemdataadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// stiffness matrix address                 (nflex x 1)
  @inlinable
  public var flexStiffnessadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_stiffnessadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_stiffnessadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first element edge id address            (nflex x 1)
  @inlinable
  public var flexElemedgeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemedgeadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemedgeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first bending data address               (nflex x 1)
  @inlinable
  public var flexBendingadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_bendingadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_bendingadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of shells                         (nflex x 1)
  @inlinable
  public var flexShellnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_shellnum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_shellnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first shell data address                 (nflex x 1)
  @inlinable
  public var flexShelldataadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_shelldataadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_shelldataadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// first evpair address                     (nflex x 1)
  @inlinable
  public var flexEvpairadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_evpairadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_evpairadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of evpairs                        (nflex x 1)
  @inlinable
  public var flexEvpairnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_evpairnum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_evpairnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// address in flex_texcoord; -1: none       (nflex x 1)
  @inlinable
  public var flexTexcoordadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_texcoordadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_texcoordadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// node body ids                            (nflexnode x 1)
  @inlinable
  public var flexNodebodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_nodebodyid, object: _storage, len: nflexnode * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_nodebodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexnode * 1))
    }
  }
  /// vertex body ids                          (nflexvert x 1)
  @inlinable
  public var flexVertbodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_vertbodyid, object: _storage, len: nflexvert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_vertbodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 1))
    }
  }
  /// first edge address                       (nflexvert x 1)
  @inlinable
  public var flexVertedgeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_vertedgeadr, object: _storage, len: nflexvert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_vertedgeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 1))
    }
  }
  /// number of edges                          (nflexvert x 1)
  @inlinable
  public var flexVertedgenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_vertedgenum, object: _storage, len: nflexvert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_vertedgenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 1))
    }
  }
  /// edge indices                             (nflexedge x 2)
  @inlinable
  public var flexVertedge: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_vertedge, object: _storage, len: nflexedge * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_vertedge
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 2))
    }
  }
  /// edge vertex ids (2 per edge)             (nflexedge x 2)
  @inlinable
  public var flexEdge: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_edge, object: _storage, len: nflexedge * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_edge
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 2))
    }
  }
  /// adjacent vertex ids (dim=2 only)         (nflexedge x 2)
  @inlinable
  public var flexEdgeflap: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_edgeflap, object: _storage, len: nflexedge * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_edgeflap
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 2))
    }
  }
  /// element vertex ids (dim+1 per elem)      (nflexelemdata x 1)
  @inlinable
  public var flexElem: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elem, object: _storage, len: nflexelemdata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elem
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexelemdata * 1))
    }
  }
  /// element texture coordinates (dim+1)      (nflexelemdata x 1)
  @inlinable
  public var flexElemtexcoord: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemtexcoord, object: _storage, len: nflexelemdata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemtexcoord
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexelemdata * 1))
    }
  }
  /// element edge ids                         (nflexelemedge x 1)
  @inlinable
  public var flexElemedge: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemedge, object: _storage, len: nflexelemedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemedge
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexelemedge * 1))
    }
  }
  /// element distance from surface, 3D only   (nflexelem x 1)
  @inlinable
  public var flexElemlayer: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_elemlayer, object: _storage, len: nflexelem * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_elemlayer
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexelem * 1))
    }
  }
  /// shell fragment vertex ids (dim per frag) (nflexshelldata x 1)
  @inlinable
  public var flexShell: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_shell, object: _storage, len: nflexshelldata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_shell
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexshelldata * 1))
    }
  }
  /// (element, vertex) collision pairs        (nflexevpair x 2)
  @inlinable
  public var flexEvpair: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_evpair, object: _storage, len: nflexevpair * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_evpair
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexevpair * 2))
    }
  }
  /// vertex positions in local body frames    (nflexvert x 3)
  @inlinable
  public var flexVert: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_vert, object: _storage, len: nflexvert * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_vert
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 3))
    }
  }
  /// vertex positions in qpos0 on [0, 1]^d    (nflexvert x 3)
  @inlinable
  public var flexVert0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_vert0, object: _storage, len: nflexvert * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_vert0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 3))
    }
  }
  /// inverse of reference shape matrix        (nflexvert x 4)
  @inlinable
  public var flexVertmetric: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_vertmetric, object: _storage, len: nflexvert * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_vertmetric
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 4))
    }
  }
  /// node positions in local body frames      (nflexnode x 3)
  @inlinable
  public var flexNode: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_node, object: _storage, len: nflexnode * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_node
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexnode * 3))
    }
  }
  /// Cartesian node positions in qpos0        (nflexnode x 3)
  @inlinable
  public var flexNode0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_node0, object: _storage, len: nflexnode * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_node0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexnode * 3))
    }
  }
  /// edge lengths in qpos0                    (nflexedge x 1)
  @inlinable
  public var flexedgeLength0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flexedge_length0, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flexedge_length0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// edge inv. weight in qpos0                (nflexedge x 1)
  @inlinable
  public var flexedgeInvweight0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flexedge_invweight0, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flexedge_invweight0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// radius around primitive element          (nflex x 1)
  @inlinable
  public var flexRadius: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_radius, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_radius
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// vertex bounding box half sizes in qpos0  (nflex x 3)
  @inlinable
  public var flexSize: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_size, object: _storage, len: nflex * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 3))
    }
  }
  /// finite element stiffness matrix          (nflexstiffness x 1)
  @inlinable
  public var flexStiffness: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_stiffness, object: _storage, len: nflexstiffness * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_stiffness
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexstiffness * 1))
    }
  }
  /// bending stiffness                        (nflexbending x 1)
  @inlinable
  public var flexBending: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_bending, object: _storage, len: nflexbending * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_bending
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexbending * 1))
    }
  }
  /// Rayleigh's damping coefficient           (nflex x 1)
  @inlinable
  public var flexDamping: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_damping, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_damping
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// edge stiffness                           (nflex x 1)
  @inlinable
  public var flexEdgestiffness: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_edgestiffness, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_edgestiffness
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// edge damping                             (nflex x 1)
  @inlinable
  public var flexEdgedamping: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.flex_edgedamping, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.flex_edgedamping
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// 0:none, 1:edges, 2:vertices, 3:strain    (nflex x 1)
  @inlinable
  public var flexEdgeequality: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_edgeequality, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_edgeequality
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// are all vertices in the same body        (nflex x 1)
  @inlinable
  public var flexRigid: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.flex_rigid, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.flex_rigid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// are both edge vertices in same body      (nflexedge x 1)
  @inlinable
  public var flexedgeRigid: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.flexedge_rigid, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.flexedge_rigid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// are all vertex coordinates (0,0,0)       (nflex x 1)
  @inlinable
  public var flexCentered: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.flex_centered, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.flex_centered
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// render flex skin with flat shading       (nflex x 1)
  @inlinable
  public var flexFlatskin: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.flex_flatskin, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.flex_flatskin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// address of bvh root; -1: no bvh          (nflex x 1)
  @inlinable
  public var flexBvhadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_bvhadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_bvhadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of bounding volumes               (nflex x 1)
  @inlinable
  public var flexBvhnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flex_bvhnum, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flex_bvhnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// number of non-zeros in Jacobian row      (nflexedge x 1)
  @inlinable
  public var flexedgeJRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flexedge_J_rownnz, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flexedge_J_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// row start address in colind array        (nflexedge x 1)
  @inlinable
  public var flexedgeJRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flexedge_J_rowadr, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flexedge_J_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// column indices in sparse Jacobian        (nJfe x 1)
  @inlinable
  public var flexedgeJColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flexedge_J_colind, object: _storage, len: nJfe * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flexedge_J_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJfe * 1))
    }
  }
  /// number of non-zeros in Jacobian row      (nflexvert x 2)
  @inlinable
  public var flexvertJRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flexvert_J_rownnz, object: _storage, len: nflexvert * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flexvert_J_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 2))
    }
  }
  /// row start address in colind array        (nflexvert x 2)
  @inlinable
  public var flexvertJRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flexvert_J_rowadr, object: _storage, len: nflexvert * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flexvert_J_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 2))
    }
  }
  /// column indices in sparse Jacobian        (nJfv x 2)
  @inlinable
  public var flexvertJColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.flexvert_J_colind, object: _storage, len: nJfv * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.flexvert_J_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJfv * 2))
    }
  }
  /// rgba when material is omitted            (nflex x 4)
  @inlinable
  public var flexRgba: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.flex_rgba, object: _storage, len: nflex * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.flex_rgba
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 4))
    }
  }
  /// vertex texture coordinates               (nflextexcoord x 2)
  @inlinable
  public var flexTexcoord: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.flex_texcoord, object: _storage, len: nflextexcoord * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.flex_texcoord
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflextexcoord * 2))
    }
  }
  /// first vertex address                     (nmesh x 1)
  @inlinable
  public var meshVertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_vertadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_vertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of vertices                       (nmesh x 1)
  @inlinable
  public var meshVertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_vertnum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_vertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// first face address                       (nmesh x 1)
  @inlinable
  public var meshFaceadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_faceadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_faceadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of faces                          (nmesh x 1)
  @inlinable
  public var meshFacenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_facenum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_facenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// address of bvh root                      (nmesh x 1)
  @inlinable
  public var meshBvhadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_bvhadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_bvhadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of bvh                            (nmesh x 1)
  @inlinable
  public var meshBvhnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_bvhnum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_bvhnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// address of octree root                   (nmesh x 1)
  @inlinable
  public var meshOctadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_octadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_octadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of octree nodes                   (nmesh x 1)
  @inlinable
  public var meshOctnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_octnum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_octnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// first normal address                     (nmesh x 1)
  @inlinable
  public var meshNormaladr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_normaladr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_normaladr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of normals                        (nmesh x 1)
  @inlinable
  public var meshNormalnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_normalnum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_normalnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// texcoord data address; -1: no texcoord   (nmesh x 1)
  @inlinable
  public var meshTexcoordadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_texcoordadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_texcoordadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of texcoord                       (nmesh x 1)
  @inlinable
  public var meshTexcoordnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_texcoordnum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_texcoordnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// graph data address; -1: no graph         (nmesh x 1)
  @inlinable
  public var meshGraphadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_graphadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_graphadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// vertex positions for all meshes          (nmeshvert x 3)
  @inlinable
  public var meshVert: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mesh_vert, object: _storage, len: nmeshvert * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mesh_vert
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshvert * 3))
    }
  }
  /// normals for all meshes                   (nmeshnormal x 3)
  @inlinable
  public var meshNormal: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mesh_normal, object: _storage, len: nmeshnormal * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mesh_normal
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshnormal * 3))
    }
  }
  /// vertex texcoords for all meshes          (nmeshtexcoord x 2)
  @inlinable
  public var meshTexcoord: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mesh_texcoord, object: _storage, len: nmeshtexcoord * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mesh_texcoord
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshtexcoord * 2))
    }
  }
  /// vertex face data                         (nmeshface x 3)
  @inlinable
  public var meshFace: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_face, object: _storage, len: nmeshface * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_face
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshface * 3))
    }
  }
  /// normal face data                         (nmeshface x 3)
  @inlinable
  public var meshFacenormal: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_facenormal, object: _storage, len: nmeshface * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_facenormal
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshface * 3))
    }
  }
  /// texture face data                        (nmeshface x 3)
  @inlinable
  public var meshFacetexcoord: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_facetexcoord, object: _storage, len: nmeshface * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_facetexcoord
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshface * 3))
    }
  }
  /// convex graph data                        (nmeshgraph x 1)
  @inlinable
  public var meshGraph: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_graph, object: _storage, len: nmeshgraph * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_graph
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshgraph * 1))
    }
  }
  /// scaling applied to asset vertices        (nmesh x 3)
  @inlinable
  public var meshScale: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.mesh_scale, object: _storage, len: nmesh * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.mesh_scale
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 3))
    }
  }
  /// translation applied to asset vertices    (nmesh x 3)
  @inlinable
  public var meshPos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.mesh_pos, object: _storage, len: nmesh * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.mesh_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 3))
    }
  }
  /// rotation applied to asset vertices       (nmesh x 4)
  @inlinable
  public var meshQuat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.mesh_quat, object: _storage, len: nmesh * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.mesh_quat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 4))
    }
  }
  /// address of asset path for mesh; -1: none (nmesh x 1)
  @inlinable
  public var meshPathadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_pathadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_pathadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// number of polygons per mesh              (nmesh x 1)
  @inlinable
  public var meshPolynum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polynum, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polynum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// first polygon address per mesh           (nmesh x 1)
  @inlinable
  public var meshPolyadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polyadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polyadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// all polygon normals                      (nmeshpoly x 3)
  @inlinable
  public var meshPolynormal: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.mesh_polynormal, object: _storage, len: nmeshpoly * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.mesh_polynormal
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshpoly * 3))
    }
  }
  /// polygon vertex start address             (nmeshpoly x 1)
  @inlinable
  public var meshPolyvertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polyvertadr, object: _storage, len: nmeshpoly * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polyvertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshpoly * 1))
    }
  }
  /// number of vertices per polygon           (nmeshpoly x 1)
  @inlinable
  public var meshPolyvertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polyvertnum, object: _storage, len: nmeshpoly * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polyvertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshpoly * 1))
    }
  }
  /// all polygon vertices                     (nmeshpolyvert x 1)
  @inlinable
  public var meshPolyvert: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polyvert, object: _storage, len: nmeshpolyvert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polyvert
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshpolyvert * 1))
    }
  }
  /// first polygon address per vertex         (nmeshvert x 1)
  @inlinable
  public var meshPolymapadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polymapadr, object: _storage, len: nmeshvert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polymapadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshvert * 1))
    }
  }
  /// number of polygons per vertex            (nmeshvert x 1)
  @inlinable
  public var meshPolymapnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polymapnum, object: _storage, len: nmeshvert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polymapnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshvert * 1))
    }
  }
  /// vertex to polygon map                    (nmeshpolymap x 1)
  @inlinable
  public var meshPolymap: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mesh_polymap, object: _storage, len: nmeshpolymap * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mesh_polymap
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmeshpolymap * 1))
    }
  }
  /// skin material id; -1: none               (nskin x 1)
  @inlinable
  public var skinMatid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_matid, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_matid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// group for visibility                     (nskin x 1)
  @inlinable
  public var skinGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_group, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// skin rgba                                (nskin x 4)
  @inlinable
  public var skinRgba: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_rgba, object: _storage, len: nskin * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_rgba
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 4))
    }
  }
  /// inflate skin in normal direction         (nskin x 1)
  @inlinable
  public var skinInflate: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_inflate, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_inflate
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// first vertex address                     (nskin x 1)
  @inlinable
  public var skinVertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_vertadr, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_vertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// number of vertices                       (nskin x 1)
  @inlinable
  public var skinVertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_vertnum, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_vertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// texcoord data address; -1: no texcoord   (nskin x 1)
  @inlinable
  public var skinTexcoordadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_texcoordadr, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_texcoordadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// first face address                       (nskin x 1)
  @inlinable
  public var skinFaceadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_faceadr, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_faceadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// number of faces                          (nskin x 1)
  @inlinable
  public var skinFacenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_facenum, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_facenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// first bone in skin                       (nskin x 1)
  @inlinable
  public var skinBoneadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_boneadr, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_boneadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// number of bones in skin                  (nskin x 1)
  @inlinable
  public var skinBonenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_bonenum, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_bonenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// vertex positions for all skin meshes     (nskinvert x 3)
  @inlinable
  public var skinVert: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_vert, object: _storage, len: nskinvert * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_vert
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinvert * 3))
    }
  }
  /// vertex texcoords for all skin meshes     (nskintexvert x 2)
  @inlinable
  public var skinTexcoord: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_texcoord, object: _storage, len: nskintexvert * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_texcoord
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskintexvert * 2))
    }
  }
  /// triangle faces for all skin meshes       (nskinface x 3)
  @inlinable
  public var skinFace: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_face, object: _storage, len: nskinface * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_face
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinface * 3))
    }
  }
  /// first vertex in each bone                (nskinbone x 1)
  @inlinable
  public var skinBonevertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_bonevertadr, object: _storage, len: nskinbone * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_bonevertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbone * 1))
    }
  }
  /// number of vertices in each bone          (nskinbone x 1)
  @inlinable
  public var skinBonevertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_bonevertnum, object: _storage, len: nskinbone * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_bonevertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbone * 1))
    }
  }
  /// bind pos of each bone                    (nskinbone x 3)
  @inlinable
  public var skinBonebindpos: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_bonebindpos, object: _storage, len: nskinbone * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_bonebindpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbone * 3))
    }
  }
  /// bind quat of each bone                   (nskinbone x 4)
  @inlinable
  public var skinBonebindquat: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_bonebindquat, object: _storage, len: nskinbone * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_bonebindquat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbone * 4))
    }
  }
  /// body id of each bone                     (nskinbone x 1)
  @inlinable
  public var skinBonebodyid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_bonebodyid, object: _storage, len: nskinbone * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_bonebodyid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbone * 1))
    }
  }
  /// mesh ids of vertices in each bone        (nskinbonevert x 1)
  @inlinable
  public var skinBonevertid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_bonevertid, object: _storage, len: nskinbonevert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_bonevertid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbonevert * 1))
    }
  }
  /// weights of vertices in each bone         (nskinbonevert x 1)
  @inlinable
  public var skinBonevertweight: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.skin_bonevertweight, object: _storage, len: nskinbonevert * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.skin_bonevertweight
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskinbonevert * 1))
    }
  }
  /// address of asset path for skin; -1: none (nskin x 1)
  @inlinable
  public var skinPathadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.skin_pathadr, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.skin_pathadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// (x, y, z_top, z_bottom)                  (nhfield x 4)
  @inlinable
  public var hfieldSize: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.hfield_size, object: _storage, len: nhfield * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.hfield_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfield * 4))
    }
  }
  /// number of rows in grid                   (nhfield x 1)
  @inlinable
  public var hfieldNrow: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.hfield_nrow, object: _storage, len: nhfield * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.hfield_nrow
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfield * 1))
    }
  }
  /// number of columns in grid                (nhfield x 1)
  @inlinable
  public var hfieldNcol: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.hfield_ncol, object: _storage, len: nhfield * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.hfield_ncol
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfield * 1))
    }
  }
  /// address in hfield_data                   (nhfield x 1)
  @inlinable
  public var hfieldAdr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.hfield_adr, object: _storage, len: nhfield * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.hfield_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfield * 1))
    }
  }
  /// elevation data                           (nhfielddata x 1)
  @inlinable
  public var hfieldData: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.hfield_data, object: _storage, len: nhfielddata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.hfield_data
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfielddata * 1))
    }
  }
  /// address of hfield asset path; -1: none   (nhfield x 1)
  @inlinable
  public var hfieldPathadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.hfield_pathadr, object: _storage, len: nhfield * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.hfield_pathadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfield * 1))
    }
  }
  /// texture type (mjtTexture)                (ntex x 1)
  @inlinable
  public var texType: MjArray<MjtTexture> {
    get { MjArray<MjtTexture>(array: UnsafeMutableRawPointer(_model.pointee.tex_type).assumingMemoryBound(to: MjtTexture.self), object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtTexture> = UnsafeMutableRawPointer(_model.pointee.tex_type).assumingMemoryBound(to: MjtTexture.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// texture colorspace (mjtColorSpace)       (ntex x 1)
  @inlinable
  public var texColorspace: MjArray<MjtColorSpace> {
    get { MjArray<MjtColorSpace>(array: UnsafeMutableRawPointer(_model.pointee.tex_colorspace).assumingMemoryBound(to: MjtColorSpace.self), object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtColorSpace> = UnsafeMutableRawPointer(_model.pointee.tex_colorspace).assumingMemoryBound(to: MjtColorSpace.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// number of rows in texture image          (ntex x 1)
  @inlinable
  public var texHeight: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tex_height, object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tex_height
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// number of columns in texture image       (ntex x 1)
  @inlinable
  public var texWidth: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tex_width, object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tex_width
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// number of channels in texture image      (ntex x 1)
  @inlinable
  public var texNchannel: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tex_nchannel, object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tex_nchannel
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// start address in tex_data                (ntex x 1)
  @inlinable
  public var texAdr: MjArray<Int64> {
    get { MjArray<Int64>(array: _model.pointee.tex_adr, object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int64> = _model.pointee.tex_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// pixel values                             (ntexdata x 1)
  @inlinable
  public var texData: MjArray<UInt8> {
    get { MjArray<UInt8>(array: _model.pointee.tex_data, object: _storage, len: ntexdata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<UInt8> = _model.pointee.tex_data
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntexdata * 1))
    }
  }
  /// address of texture asset path; -1: none  (ntex x 1)
  @inlinable
  public var texPathadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tex_pathadr, object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tex_pathadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// indices of textures; -1: none            (nmat x mjNTEXROLE)
  @inlinable
  public var matTexid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mat_texid, object: _storage, len: nmat * 10) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mat_texid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 10))
    }
  }
  /// make texture cube uniform                (nmat x 1)
  @inlinable
  public var matTexuniform: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.mat_texuniform, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.mat_texuniform
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// texture repetition for 2d mapping        (nmat x 2)
  @inlinable
  public var matTexrepeat: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_texrepeat, object: _storage, len: nmat * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_texrepeat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 2))
    }
  }
  /// emission (x rgb)                         (nmat x 1)
  @inlinable
  public var matEmission: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_emission, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_emission
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// specular (x white)                       (nmat x 1)
  @inlinable
  public var matSpecular: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_specular, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_specular
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// shininess coef                           (nmat x 1)
  @inlinable
  public var matShininess: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_shininess, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_shininess
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// reflectance (0: disable)                 (nmat x 1)
  @inlinable
  public var matReflectance: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_reflectance, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_reflectance
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// metallic coef                            (nmat x 1)
  @inlinable
  public var matMetallic: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_metallic, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_metallic
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// roughness coef                           (nmat x 1)
  @inlinable
  public var matRoughness: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_roughness, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_roughness
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// rgba                                     (nmat x 4)
  @inlinable
  public var matRgba: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.mat_rgba, object: _storage, len: nmat * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.mat_rgba
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 4))
    }
  }
  /// contact dimensionality                   (npair x 1)
  @inlinable
  public var pairDim: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.pair_dim, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.pair_dim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// id of geom1                              (npair x 1)
  @inlinable
  public var pairGeom1: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.pair_geom1, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.pair_geom1
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// id of geom2                              (npair x 1)
  @inlinable
  public var pairGeom2: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.pair_geom2, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.pair_geom2
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// body1 << 16 + body2                      (npair x 1)
  @inlinable
  public var pairSignature: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.pair_signature, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.pair_signature
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// solver reference: contact normal         (npair x mjNREF)
  @inlinable
  public var pairSolref: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.pair_solref, object: _storage, len: npair * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.pair_solref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 2))
    }
  }
  /// solver reference: contact friction       (npair x mjNREF)
  @inlinable
  public var pairSolreffriction: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.pair_solreffriction, object: _storage, len: npair * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.pair_solreffriction
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 2))
    }
  }
  /// solver impedance: contact                (npair x mjNIMP)
  @inlinable
  public var pairSolimp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.pair_solimp, object: _storage, len: npair * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.pair_solimp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 5))
    }
  }
  /// geometric inflation for contact          (npair x 1)
  @inlinable
  public var pairMargin: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.pair_margin, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.pair_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// additional contact detection buffer      (npair x 1)
  @inlinable
  public var pairGap: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.pair_gap, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.pair_gap
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// tangent1, 2, spin, roll1, 2              (npair x 5)
  @inlinable
  public var pairFriction: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.pair_friction, object: _storage, len: npair * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.pair_friction
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 5))
    }
  }
  /// body1 << 16 + body2                      (nexclude x 1)
  @inlinable
  public var excludeSignature: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.exclude_signature, object: _storage, len: nexclude * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.exclude_signature
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nexclude * 1))
    }
  }
  /// constraint type (mjtEq)                  (neq x 1)
  @inlinable
  public var eqType: MjArray<MjtEq> {
    get { MjArray<MjtEq>(array: UnsafeMutableRawPointer(_model.pointee.eq_type).assumingMemoryBound(to: MjtEq.self), object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtEq> = UnsafeMutableRawPointer(_model.pointee.eq_type).assumingMemoryBound(to: MjtEq.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// id of object 1                           (neq x 1)
  @inlinable
  public var eqObj1id: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.eq_obj1id, object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.eq_obj1id
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// id of object 2                           (neq x 1)
  @inlinable
  public var eqObj2id: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.eq_obj2id, object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.eq_obj2id
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// type of both objects (mjtObj)            (neq x 1)
  @inlinable
  public var eqObjtype: MjArray<MjtObj> {
    get { MjArray<MjtObj>(array: UnsafeMutableRawPointer(_model.pointee.eq_objtype).assumingMemoryBound(to: MjtObj.self), object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtObj> = UnsafeMutableRawPointer(_model.pointee.eq_objtype).assumingMemoryBound(to: MjtObj.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// initial enable/disable constraint state  (neq x 1)
  @inlinable
  public var eqActive0: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.eq_active0, object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.eq_active0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// constraint solver reference              (neq x mjNREF)
  @inlinable
  public var eqSolref: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.eq_solref, object: _storage, len: neq * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.eq_solref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 2))
    }
  }
  /// constraint solver impedance              (neq x mjNIMP)
  @inlinable
  public var eqSolimp: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.eq_solimp, object: _storage, len: neq * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.eq_solimp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 5))
    }
  }
  /// numeric data for constraint              (neq x mjNEQDATA)
  @inlinable
  public var eqData: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.eq_data, object: _storage, len: neq * 11) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.eq_data
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 11))
    }
  }
  /// address of first object in tendon's path (ntendon x 1)
  @inlinable
  public var tendonAdr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_adr, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// number of objects in tendon's path       (ntendon x 1)
  @inlinable
  public var tendonNum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_num, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_num
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// material id for rendering                (ntendon x 1)
  @inlinable
  public var tendonMatid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_matid, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_matid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// actuator contributing damping / armature (ntendon x 1)
  @inlinable
  public var tendonActuatorid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_actuatorid, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_actuatorid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// group for visibility                     (ntendon x 1)
  @inlinable
  public var tendonGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_group, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// number of trees along tendon's path      (ntendon x 1)
  @inlinable
  public var tendonTreenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_treenum, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_treenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// first two trees along tendon's path      (ntendon x 2)
  @inlinable
  public var tendonTreeid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tendon_treeid, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tendon_treeid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// number of non-zeros in Jacobian row      (ntendon x 1)
  @inlinable
  public var tenJRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.ten_J_rownnz, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.ten_J_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// row start address in colind array        (ntendon x 1)
  @inlinable
  public var tenJRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.ten_J_rowadr, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.ten_J_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// column indices in sparse Jacobian        (nJten x 1)
  @inlinable
  public var tenJColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.ten_J_colind, object: _storage, len: nJten * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.ten_J_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJten * 1))
    }
  }
  /// does tendon have length limits           (ntendon x 1)
  @inlinable
  public var tendonLimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.tendon_limited, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.tendon_limited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// does tendon have actuator force limits   (ntendon x 1)
  @inlinable
  public var tendonActfrclimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.tendon_actfrclimited, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.tendon_actfrclimited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// width for rendering                      (ntendon x 1)
  @inlinable
  public var tendonWidth: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_width, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_width
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// constraint solver reference: limit       (ntendon x mjNREF)
  @inlinable
  public var tendonSolrefLim: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_solref_lim, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_solref_lim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// constraint solver impedance: limit       (ntendon x mjNIMP)
  @inlinable
  public var tendonSolimpLim: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_solimp_lim, object: _storage, len: ntendon * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_solimp_lim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 5))
    }
  }
  /// constraint solver reference: friction    (ntendon x mjNREF)
  @inlinable
  public var tendonSolrefFri: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_solref_fri, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_solref_fri
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// constraint solver impedance: friction    (ntendon x mjNIMP)
  @inlinable
  public var tendonSolimpFri: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_solimp_fri, object: _storage, len: ntendon * 5) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_solimp_fri
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 5))
    }
  }
  /// tendon length limits                     (ntendon x 2)
  @inlinable
  public var tendonRange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_range, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_range
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// range of total actuator force            (ntendon x 2)
  @inlinable
  public var tendonActfrcrange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_actfrcrange, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_actfrcrange
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// min distance for limit detection         (ntendon x 1)
  @inlinable
  public var tendonMargin: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_margin, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// linear stiffness coefficient             (ntendon x 1)
  @inlinable
  public var tendonStiffness: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_stiffness, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_stiffness
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// high-order stiffness coefficients        (ntendon x mjNPOLY)
  @inlinable
  public var tendonStiffnesspoly: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_stiffnesspoly, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_stiffnesspoly
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// linear damping coefficient               (ntendon x 1)
  @inlinable
  public var tendonDamping: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_damping, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_damping
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// high-order damping coefficients          (ntendon x mjNPOLY)
  @inlinable
  public var tendonDampingpoly: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_dampingpoly, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_dampingpoly
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// inertia associated with tendon velocity  (ntendon x 1)
  @inlinable
  public var tendonArmature: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_armature, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_armature
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// loss due to friction                     (ntendon x 1)
  @inlinable
  public var tendonFrictionloss: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_frictionloss, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_frictionloss
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// spring resting length range              (ntendon x 2)
  @inlinable
  public var tendonLengthspring: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_lengthspring, object: _storage, len: ntendon * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_lengthspring
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 2))
    }
  }
  /// tendon length in qpos0                   (ntendon x 1)
  @inlinable
  public var tendonLength0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_length0, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_length0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// inv. weight in qpos0                     (ntendon x 1)
  @inlinable
  public var tendonInvweight0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_invweight0, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_invweight0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// user data                                (ntendon x nuser_tendon)
  @inlinable
  public var tendonUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tendon_user, object: _storage, len: ntendon * nuserTendon) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tendon_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * nuserTendon))
    }
  }
  /// rgba when material is omitted            (ntendon x 4)
  @inlinable
  public var tendonRgba: MjArray<Float> {
    get { MjArray<Float>(array: _model.pointee.tendon_rgba, object: _storage, len: ntendon * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Float> = _model.pointee.tendon_rgba
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 4))
    }
  }
  /// wrap object type (mjtWrap)               (nwrap x 1)
  @inlinable
  public var wrapType: MjArray<MjtWrap> {
    get { MjArray<MjtWrap>(array: UnsafeMutableRawPointer(_model.pointee.wrap_type).assumingMemoryBound(to: MjtWrap.self), object: _storage, len: nwrap * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtWrap> = UnsafeMutableRawPointer(_model.pointee.wrap_type).assumingMemoryBound(to: MjtWrap.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nwrap * 1))
    }
  }
  /// object id: geom, site, joint             (nwrap x 1)
  @inlinable
  public var wrapObjid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.wrap_objid, object: _storage, len: nwrap * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.wrap_objid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nwrap * 1))
    }
  }
  /// divisor, joint coef, or site id          (nwrap x 1)
  @inlinable
  public var wrapPrm: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.wrap_prm, object: _storage, len: nwrap * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.wrap_prm
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nwrap * 1))
    }
  }
  /// transmission type (mjtTrn)               (nu x 1)
  @inlinable
  public var actuatorTrntype: MjArray<MjtTrn> {
    get { MjArray<MjtTrn>(array: UnsafeMutableRawPointer(_model.pointee.actuator_trntype).assumingMemoryBound(to: MjtTrn.self), object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtTrn> = UnsafeMutableRawPointer(_model.pointee.actuator_trntype).assumingMemoryBound(to: MjtTrn.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// dynamics type (mjtDyn)                   (nu x 1)
  @inlinable
  public var actuatorDyntype: MjArray<MjtDyn> {
    get { MjArray<MjtDyn>(array: UnsafeMutableRawPointer(_model.pointee.actuator_dyntype).assumingMemoryBound(to: MjtDyn.self), object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtDyn> = UnsafeMutableRawPointer(_model.pointee.actuator_dyntype).assumingMemoryBound(to: MjtDyn.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// gain type (mjtGain)                      (nu x 1)
  @inlinable
  public var actuatorGaintype: MjArray<MjtGain> {
    get { MjArray<MjtGain>(array: UnsafeMutableRawPointer(_model.pointee.actuator_gaintype).assumingMemoryBound(to: MjtGain.self), object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtGain> = UnsafeMutableRawPointer(_model.pointee.actuator_gaintype).assumingMemoryBound(to: MjtGain.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// bias type (mjtBias)                      (nu x 1)
  @inlinable
  public var actuatorBiastype: MjArray<MjtBias> {
    get { MjArray<MjtBias>(array: UnsafeMutableRawPointer(_model.pointee.actuator_biastype).assumingMemoryBound(to: MjtBias.self), object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtBias> = UnsafeMutableRawPointer(_model.pointee.actuator_biastype).assumingMemoryBound(to: MjtBias.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// transmission id: joint, tendon, site     (nu x 2)
  @inlinable
  public var actuatorTrnid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_trnid, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_trnid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// linear damping coefficient               (nu x 1)
  @inlinable
  public var actuatorDamping: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_damping, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_damping
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// high-order damping coefficients          (nu x mjNPOLY)
  @inlinable
  public var actuatorDampingpoly: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_dampingpoly, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_dampingpoly
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// armature added to target (joint, tendon) (nu x 1)
  @inlinable
  public var actuatorArmature: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_armature, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_armature
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// first activation address; -1: stateless  (nu x 1)
  @inlinable
  public var actuatorActadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_actadr, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_actadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// number of activation variables           (nu x 1)
  @inlinable
  public var actuatorActnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_actnum, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_actnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// group for visibility                     (nu x 1)
  @inlinable
  public var actuatorGroup: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_group, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_group
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// history buffer: [nsample, interp]        (nu x 2)
  @inlinable
  public var actuatorHistory: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_history, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_history
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// address in history buffer; -1: none      (nu x 1)
  @inlinable
  public var actuatorHistoryadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_historyadr, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_historyadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// delay time in seconds; 0: no delay       (nu x 1)
  @inlinable
  public var actuatorDelay: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_delay, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_delay
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// is control limited                       (nu x 1)
  @inlinable
  public var actuatorCtrllimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.actuator_ctrllimited, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.actuator_ctrllimited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// is force limited                         (nu x 1)
  @inlinable
  public var actuatorForcelimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.actuator_forcelimited, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.actuator_forcelimited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// is activation limited                    (nu x 1)
  @inlinable
  public var actuatorActlimited: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.actuator_actlimited, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.actuator_actlimited
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// dynamics parameters                      (nu x mjNDYN)
  @inlinable
  public var actuatorDynprm: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_dynprm, object: _storage, len: nu * 10) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_dynprm
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 10))
    }
  }
  /// gain parameters                          (nu x mjNGAIN)
  @inlinable
  public var actuatorGainprm: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_gainprm, object: _storage, len: nu * 10) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_gainprm
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 10))
    }
  }
  /// bias parameters                          (nu x mjNBIAS)
  @inlinable
  public var actuatorBiasprm: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_biasprm, object: _storage, len: nu * 10) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_biasprm
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 10))
    }
  }
  /// step activation before force             (nu x 1)
  @inlinable
  public var actuatorActearly: MjArray<Bool> {
    get { MjArray<Bool>(array: _model.pointee.actuator_actearly, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _model.pointee.actuator_actearly
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// range of controls                        (nu x 2)
  @inlinable
  public var actuatorCtrlrange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_ctrlrange, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_ctrlrange
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// range of forces                          (nu x 2)
  @inlinable
  public var actuatorForcerange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_forcerange, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_forcerange
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// range of activations                     (nu x 2)
  @inlinable
  public var actuatorActrange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_actrange, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_actrange
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// scale length and transmitted force       (nu x 6)
  @inlinable
  public var actuatorGear: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_gear, object: _storage, len: nu * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_gear
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 6))
    }
  }
  /// crank length for slider-crank            (nu x 1)
  @inlinable
  public var actuatorCranklength: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_cranklength, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_cranklength
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// acceleration from unit force in qpos0    (nu x 1)
  @inlinable
  public var actuatorAcc0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_acc0, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_acc0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// actuator length in qpos0                 (nu x 1)
  @inlinable
  public var actuatorLength0: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_length0, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_length0
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// feasible actuator length range           (nu x 2)
  @inlinable
  public var actuatorLengthrange: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_lengthrange, object: _storage, len: nu * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_lengthrange
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 2))
    }
  }
  /// user data                                (nu x nuser_actuator)
  @inlinable
  public var actuatorUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.actuator_user, object: _storage, len: nu * nuserActuator) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.actuator_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * nuserActuator))
    }
  }
  /// plugin instance id; -1: not a plugin     (nu x 1)
  @inlinable
  public var actuatorPlugin: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.actuator_plugin, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.actuator_plugin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// sensor type (mjtSensor)                  (nsensor x 1)
  @inlinable
  public var sensorType: MjArray<MjtSensor> {
    get { MjArray<MjtSensor>(array: UnsafeMutableRawPointer(_model.pointee.sensor_type).assumingMemoryBound(to: MjtSensor.self), object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtSensor> = UnsafeMutableRawPointer(_model.pointee.sensor_type).assumingMemoryBound(to: MjtSensor.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// numeric data type (mjtDataType)          (nsensor x 1)
  @inlinable
  public var sensorDatatype: MjArray<MjtDataType> {
    get { MjArray<MjtDataType>(array: UnsafeMutableRawPointer(_model.pointee.sensor_datatype).assumingMemoryBound(to: MjtDataType.self), object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtDataType> = UnsafeMutableRawPointer(_model.pointee.sensor_datatype).assumingMemoryBound(to: MjtDataType.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// required compute stage (mjtStage)        (nsensor x 1)
  @inlinable
  public var sensorNeedstage: MjArray<MjtStage> {
    get { MjArray<MjtStage>(array: UnsafeMutableRawPointer(_model.pointee.sensor_needstage).assumingMemoryBound(to: MjtStage.self), object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtStage> = UnsafeMutableRawPointer(_model.pointee.sensor_needstage).assumingMemoryBound(to: MjtStage.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// type of sensorized object (mjtObj)       (nsensor x 1)
  @inlinable
  public var sensorObjtype: MjArray<MjtObj> {
    get { MjArray<MjtObj>(array: UnsafeMutableRawPointer(_model.pointee.sensor_objtype).assumingMemoryBound(to: MjtObj.self), object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtObj> = UnsafeMutableRawPointer(_model.pointee.sensor_objtype).assumingMemoryBound(to: MjtObj.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// id of sensorized object                  (nsensor x 1)
  @inlinable
  public var sensorObjid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_objid, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_objid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// type of reference frame (mjtObj)         (nsensor x 1)
  @inlinable
  public var sensorReftype: MjArray<MjtObj> {
    get { MjArray<MjtObj>(array: UnsafeMutableRawPointer(_model.pointee.sensor_reftype).assumingMemoryBound(to: MjtObj.self), object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtObj> = UnsafeMutableRawPointer(_model.pointee.sensor_reftype).assumingMemoryBound(to: MjtObj.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// id of reference frame; -1: global frame  (nsensor x 1)
  @inlinable
  public var sensorRefid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_refid, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_refid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// sensor parameters                        (nsensor x mjNSENS)
  @inlinable
  public var sensorIntprm: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_intprm, object: _storage, len: nsensor * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_intprm
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 3))
    }
  }
  /// number of scalar outputs                 (nsensor x 1)
  @inlinable
  public var sensorDim: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_dim, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_dim
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// address in sensor array                  (nsensor x 1)
  @inlinable
  public var sensorAdr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_adr, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// cutoff for real and positive; 0: ignore  (nsensor x 1)
  @inlinable
  public var sensorCutoff: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.sensor_cutoff, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.sensor_cutoff
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// noise standard deviation                 (nsensor x 1)
  @inlinable
  public var sensorNoise: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.sensor_noise, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.sensor_noise
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// history buffer: [nsample, interp]        (nsensor x 2)
  @inlinable
  public var sensorHistory: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_history, object: _storage, len: nsensor * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_history
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 2))
    }
  }
  /// address in history buffer; -1: none      (nsensor x 1)
  @inlinable
  public var sensorHistoryadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_historyadr, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_historyadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// delay time in seconds; 0: no delay       (nsensor x 1)
  @inlinable
  public var sensorDelay: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.sensor_delay, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.sensor_delay
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// interval: [period, phase] in seconds     (nsensor x 2)
  @inlinable
  public var sensorInterval: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.sensor_interval, object: _storage, len: nsensor * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.sensor_interval
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 2))
    }
  }
  /// user data                                (nsensor x nuser_sensor)
  @inlinable
  public var sensorUser: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.sensor_user, object: _storage, len: nsensor * nuserSensor) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.sensor_user
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * nuserSensor))
    }
  }
  /// plugin instance id; -1: not a plugin     (nsensor x 1)
  @inlinable
  public var sensorPlugin: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.sensor_plugin, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.sensor_plugin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// globally registered plugin slot number   (nplugin x 1)
  @inlinable
  public var plugin: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.plugin, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.plugin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// address in the plugin state array        (nplugin x 1)
  @inlinable
  public var pluginStateadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.plugin_stateadr, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.plugin_stateadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// number of states in the plugin instance  (nplugin x 1)
  @inlinable
  public var pluginStatenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.plugin_statenum, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.plugin_statenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// config attributes of plugin instances    (npluginattr x 1)
  @inlinable
  public var pluginAttr: MjArray<CChar> {
    get { MjArray<CChar>(array: _model.pointee.plugin_attr, object: _storage, len: npluginattr * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<CChar> = _model.pointee.plugin_attr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npluginattr * 1))
    }
  }
  /// address to each instance's config attrib (nplugin x 1)
  @inlinable
  public var pluginAttradr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.plugin_attradr, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.plugin_attradr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// address of field in numeric_data         (nnumeric x 1)
  @inlinable
  public var numericAdr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.numeric_adr, object: _storage, len: nnumeric * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.numeric_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nnumeric * 1))
    }
  }
  /// size of numeric field                    (nnumeric x 1)
  @inlinable
  public var numericSize: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.numeric_size, object: _storage, len: nnumeric * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.numeric_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nnumeric * 1))
    }
  }
  /// array of all numeric fields              (nnumericdata x 1)
  @inlinable
  public var numericData: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.numeric_data, object: _storage, len: nnumericdata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.numeric_data
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nnumericdata * 1))
    }
  }
  /// address of text in text_data             (ntext x 1)
  @inlinable
  public var textAdr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.text_adr, object: _storage, len: ntext * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.text_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntext * 1))
    }
  }
  /// size of text field (strlen+1)            (ntext x 1)
  @inlinable
  public var textSize: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.text_size, object: _storage, len: ntext * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.text_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntext * 1))
    }
  }
  /// array of all text fields (0-terminated)  (ntextdata x 1)
  @inlinable
  public var textData: MjArray<CChar> {
    get { MjArray<CChar>(array: _model.pointee.text_data, object: _storage, len: ntextdata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<CChar> = _model.pointee.text_data
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntextdata * 1))
    }
  }
  /// address of text in text_data             (ntuple x 1)
  @inlinable
  public var tupleAdr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tuple_adr, object: _storage, len: ntuple * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tuple_adr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntuple * 1))
    }
  }
  /// number of objects in tuple               (ntuple x 1)
  @inlinable
  public var tupleSize: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tuple_size, object: _storage, len: ntuple * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tuple_size
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntuple * 1))
    }
  }
  /// array of object types in all tuples      (ntupledata x 1)
  @inlinable
  public var tupleObjtype: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tuple_objtype, object: _storage, len: ntupledata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tuple_objtype
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntupledata * 1))
    }
  }
  /// array of object ids in all tuples        (ntupledata x 1)
  @inlinable
  public var tupleObjid: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.tuple_objid, object: _storage, len: ntupledata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.tuple_objid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntupledata * 1))
    }
  }
  /// array of object params in all tuples     (ntupledata x 1)
  @inlinable
  public var tupleObjprm: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.tuple_objprm, object: _storage, len: ntupledata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.tuple_objprm
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntupledata * 1))
    }
  }
  /// key time                                 (nkey x 1)
  @inlinable
  public var keyTime: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_time, object: _storage, len: nkey * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_time
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * 1))
    }
  }
  /// key position                             (nkey x nq)
  @inlinable
  public var keyQpos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_qpos, object: _storage, len: nkey * nq) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_qpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * nq))
    }
  }
  /// key velocity                             (nkey x nv)
  @inlinable
  public var keyQvel: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_qvel, object: _storage, len: nkey * nv) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_qvel
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * nv))
    }
  }
  /// key activation                           (nkey x na)
  @inlinable
  public var keyAct: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_act, object: _storage, len: nkey * na) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_act
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * na))
    }
  }
  /// key mocap position                       (nkey x nmocap*3)
  @inlinable
  public var keyMpos: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_mpos, object: _storage, len: nkey * nmocap*3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_mpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * nmocap*3))
    }
  }
  /// key mocap quaternion                     (nkey x nmocap*4)
  @inlinable
  public var keyMquat: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_mquat, object: _storage, len: nkey * nmocap*4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_mquat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * nmocap*4))
    }
  }
  /// key control                              (nkey x nu)
  @inlinable
  public var keyCtrl: MjArray<Double> {
    get { MjArray<Double>(array: _model.pointee.key_ctrl, object: _storage, len: nkey * nu) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _model.pointee.key_ctrl
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * nu))
    }
  }
  /// body name pointers                       (nbody x 1)
  @inlinable
  public var nameBodyadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_bodyadr, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_bodyadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// joint name pointers                      (njnt x 1)
  @inlinable
  public var nameJntadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_jntadr, object: _storage, len: njnt * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_jntadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 1))
    }
  }
  /// geom name pointers                       (ngeom x 1)
  @inlinable
  public var nameGeomadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_geomadr, object: _storage, len: ngeom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_geomadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 1))
    }
  }
  /// site name pointers                       (nsite x 1)
  @inlinable
  public var nameSiteadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_siteadr, object: _storage, len: nsite * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_siteadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 1))
    }
  }
  /// camera name pointers                     (ncam x 1)
  @inlinable
  public var nameCamadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_camadr, object: _storage, len: ncam * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_camadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 1))
    }
  }
  /// light name pointers                      (nlight x 1)
  @inlinable
  public var nameLightadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_lightadr, object: _storage, len: nlight * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_lightadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 1))
    }
  }
  /// flex name pointers                       (nflex x 1)
  @inlinable
  public var nameFlexadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_flexadr, object: _storage, len: nflex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_flexadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex * 1))
    }
  }
  /// mesh name pointers                       (nmesh x 1)
  @inlinable
  public var nameMeshadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_meshadr, object: _storage, len: nmesh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_meshadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmesh * 1))
    }
  }
  /// skin name pointers                       (nskin x 1)
  @inlinable
  public var nameSkinadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_skinadr, object: _storage, len: nskin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_skinadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin * 1))
    }
  }
  /// hfield name pointers                     (nhfield x 1)
  @inlinable
  public var nameHfieldadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_hfieldadr, object: _storage, len: nhfield * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_hfieldadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhfield * 1))
    }
  }
  /// texture name pointers                    (ntex x 1)
  @inlinable
  public var nameTexadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_texadr, object: _storage, len: ntex * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_texadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntex * 1))
    }
  }
  /// material name pointers                   (nmat x 1)
  @inlinable
  public var nameMatadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_matadr, object: _storage, len: nmat * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_matadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmat * 1))
    }
  }
  /// geom pair name pointers                  (npair x 1)
  @inlinable
  public var namePairadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_pairadr, object: _storage, len: npair * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_pairadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npair * 1))
    }
  }
  /// exclude name pointers                    (nexclude x 1)
  @inlinable
  public var nameExcludeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_excludeadr, object: _storage, len: nexclude * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_excludeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nexclude * 1))
    }
  }
  /// equality constraint name pointers        (neq x 1)
  @inlinable
  public var nameEqadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_eqadr, object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_eqadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// tendon name pointers                     (ntendon x 1)
  @inlinable
  public var nameTendonadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_tendonadr, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_tendonadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// actuator name pointers                   (nu x 1)
  @inlinable
  public var nameActuatoradr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_actuatoradr, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_actuatoradr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// sensor name pointers                     (nsensor x 1)
  @inlinable
  public var nameSensoradr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_sensoradr, object: _storage, len: nsensor * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_sensoradr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensor * 1))
    }
  }
  /// numeric name pointers                    (nnumeric x 1)
  @inlinable
  public var nameNumericadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_numericadr, object: _storage, len: nnumeric * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_numericadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nnumeric * 1))
    }
  }
  /// text name pointers                       (ntext x 1)
  @inlinable
  public var nameTextadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_textadr, object: _storage, len: ntext * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_textadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntext * 1))
    }
  }
  /// tuple name pointers                      (ntuple x 1)
  @inlinable
  public var nameTupleadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_tupleadr, object: _storage, len: ntuple * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_tupleadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntuple * 1))
    }
  }
  /// keyframe name pointers                   (nkey x 1)
  @inlinable
  public var nameKeyadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_keyadr, object: _storage, len: nkey * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_keyadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nkey * 1))
    }
  }
  /// plugin instance name pointers            (nplugin x 1)
  @inlinable
  public var namePluginadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.name_pluginadr, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.name_pluginadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// names of all objects, 0-terminated       (nnames x 1)
  @inlinable
  public var names: MjArray<CChar> {
    get { MjArray<CChar>(array: _model.pointee.names, object: _storage, len: nnames * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<CChar> = _model.pointee.names
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nnames * 1))
    }
  }
  /// internal hash map of names               (nnames_map x 1)
  @inlinable
  public var namesMap: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.names_map, object: _storage, len: nnamesMap * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.names_map
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nnamesMap * 1))
    }
  }
  /// paths to assets, 0-terminated            (npaths x 1)
  @inlinable
  public var paths: MjArray<CChar> {
    get { MjArray<CChar>(array: _model.pointee.paths, object: _storage, len: npaths * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<CChar> = _model.pointee.paths
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npaths * 1))
    }
  }
  /// body-dof: non-zeros in each row          (nbody x 1)
  @inlinable
  public var bRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.B_rownnz, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.B_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// body-dof: row addresses                  (nbody x 1)
  @inlinable
  public var bRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.B_rowadr, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.B_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// body-dof: column indices                 (nB x 1)
  @inlinable
  public var bColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.B_colind, object: _storage, len: nB * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.B_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nB * 1))
    }
  }
  /// reduced inertia: non-zeros in each row   (nv x 1)
  @inlinable
  public var mRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.M_rownnz, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.M_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// reduced inertia: row addresses           (nv x 1)
  @inlinable
  public var mRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.M_rowadr, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.M_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// reduced inertia: column indices          (nC x 1)
  @inlinable
  public var mColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.M_colind, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.M_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// index mapping from qM to M               (nC x 1)
  @inlinable
  public var mapM2M: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mapM2M, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mapM2M
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// full inertia: non-zeros in each row      (nv x 1)
  @inlinable
  public var dRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.D_rownnz, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.D_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// full inertia: row addresses              (nv x 1)
  @inlinable
  public var dRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.D_rowadr, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.D_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// full inertia: index of diagonal element  (nv x 1)
  @inlinable
  public var dDiag: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.D_diag, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.D_diag
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// full inertia: column indices             (nD x 1)
  @inlinable
  public var dColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.D_colind, object: _storage, len: nD * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.D_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nD * 1))
    }
  }
  /// index mapping from M to D                (nD x 1)
  @inlinable
  public var mapM2D: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mapM2D, object: _storage, len: nD * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mapM2D
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nD * 1))
    }
  }
  /// index mapping from D to M                (nC x 1)
  @inlinable
  public var mapD2M: MjArray<Int32> {
    get { MjArray<Int32>(array: _model.pointee.mapD2M, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _model.pointee.mapD2M
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// also held by the mjSpec that compiled this model
  @inlinable
  public var signature: UInt64 {
    get { _model.pointee.signature }
    set { _model.pointee.signature = newValue }
  }
}
extension MjModel: CustomReflectable {
  public var customMirror: Mirror {
    Mirror(self, children: ["nq": nq, "nv": nv, "nu": nu, "na": na, "nbody": nbody, "nbvh": nbvh, "nbvhstatic": nbvhstatic, "nbvhdynamic": nbvhdynamic, "noct": noct, "njnt": njnt, "ntree": ntree, "nM": nM, "nB": nB, "nC": nC, "nD": nD, "ngeom": ngeom, "nsite": nsite, "ncam": ncam, "nlight": nlight, "nflex": nflex, "nflexnode": nflexnode, "nflexvert": nflexvert, "nflexedge": nflexedge, "nflexelem": nflexelem, "nflexelemdata": nflexelemdata, "nflexstiffness": nflexstiffness, "nflexbending": nflexbending, "nflexelemedge": nflexelemedge, "nflexshelldata": nflexshelldata, "nflexevpair": nflexevpair, "nflextexcoord": nflextexcoord, "nJfe": nJfe, "nJfv": nJfv, "nmesh": nmesh, "nmeshvert": nmeshvert, "nmeshnormal": nmeshnormal, "nmeshtexcoord": nmeshtexcoord, "nmeshface": nmeshface, "nmeshgraph": nmeshgraph, "nmeshpoly": nmeshpoly, "nmeshpolyvert": nmeshpolyvert, "nmeshpolymap": nmeshpolymap, "nskin": nskin, "nskinvert": nskinvert, "nskintexvert": nskintexvert, "nskinface": nskinface, "nskinbone": nskinbone, "nskinbonevert": nskinbonevert, "nhfield": nhfield, "nhfielddata": nhfielddata, "ntex": ntex, "ntexdata": ntexdata, "nmat": nmat, "npair": npair, "nexclude": nexclude, "neq": neq, "ntendon": ntendon, "nJten": nJten, "nwrap": nwrap, "nsensor": nsensor, "nnumeric": nnumeric, "nnumericdata": nnumericdata, "ntext": ntext, "ntextdata": ntextdata, "ntuple": ntuple, "ntupledata": ntupledata, "nkey": nkey, "nmocap": nmocap, "nplugin": nplugin, "npluginattr": npluginattr, "nuserBody": nuserBody, "nuserJnt": nuserJnt, "nuserGeom": nuserGeom, "nuserSite": nuserSite, "nuserCam": nuserCam, "nuserTendon": nuserTendon, "nuserActuator": nuserActuator, "nuserSensor": nuserSensor, "nnames": nnames, "npaths": npaths, "nnamesMap": nnamesMap, "nJmom": nJmom, "ngravcomp": ngravcomp, "nemax": nemax, "njmax": njmax, "nconmax": nconmax, "nuserdata": nuserdata, "nsensordata": nsensordata, "npluginstate": npluginstate, "nhistory": nhistory, "narena": narena, "nbuffer": nbuffer, "opt": opt, "vis": vis, "stat": stat, "qpos0": qpos0, "qposSpring": qposSpring, "bodyParentid": bodyParentid, "bodyRootid": bodyRootid, "bodyWeldid": bodyWeldid, "bodyMocapid": bodyMocapid, "bodyJntnum": bodyJntnum, "bodyJntadr": bodyJntadr, "bodyDofnum": bodyDofnum, "bodyDofadr": bodyDofadr, "bodyTreeid": bodyTreeid, "bodyGeomnum": bodyGeomnum, "bodyGeomadr": bodyGeomadr, "bodySimple": bodySimple, "bodySameframe": bodySameframe, "bodyPos": bodyPos, "bodyQuat": bodyQuat, "bodyIpos": bodyIpos, "bodyIquat": bodyIquat, "bodyMass": bodyMass, "bodySubtreemass": bodySubtreemass, "bodyInertia": bodyInertia, "bodyInvweight0": bodyInvweight0, "bodyGravcomp": bodyGravcomp, "bodyMargin": bodyMargin, "bodyUser": bodyUser, "bodyPlugin": bodyPlugin, "bodyContype": bodyContype, "bodyConaffinity": bodyConaffinity, "bodyBvhadr": bodyBvhadr, "bodyBvhnum": bodyBvhnum, "bvhDepth": bvhDepth, "bvhChild": bvhChild, "bvhNodeid": bvhNodeid, "bvhAabb": bvhAabb, "octDepth": octDepth, "octChild": octChild, "octAabb": octAabb, "octCoeff": octCoeff, "jntType": jntType, "jntQposadr": jntQposadr, "jntDofadr": jntDofadr, "jntBodyid": jntBodyid, "jntActuatorid": jntActuatorid, "jntGroup": jntGroup, "jntLimited": jntLimited, "jntActfrclimited": jntActfrclimited, "jntActgravcomp": jntActgravcomp, "jntSolref": jntSolref, "jntSolimp": jntSolimp, "jntPos": jntPos, "jntAxis": jntAxis, "jntStiffness": jntStiffness, "jntStiffnesspoly": jntStiffnesspoly, "jntRange": jntRange, "jntActfrcrange": jntActfrcrange, "jntMargin": jntMargin, "jntUser": jntUser, "dofBodyid": dofBodyid, "dofJntid": dofJntid, "dofParentid": dofParentid, "dofTreeid": dofTreeid, "dofMadr": dofMadr, "dofSimplenum": dofSimplenum, "dofSolref": dofSolref, "dofSolimp": dofSolimp, "dofFrictionloss": dofFrictionloss, "dofArmature": dofArmature, "dofDamping": dofDamping, "dofDampingpoly": dofDampingpoly, "dofInvweight0": dofInvweight0, "dofM0": dofM0, "dofLength": dofLength, "treeBodyadr": treeBodyadr, "treeBodynum": treeBodynum, "treeDofadr": treeDofadr, "treeDofnum": treeDofnum, "treeSleepPolicy": treeSleepPolicy, "geomType": geomType, "geomContype": geomContype, "geomConaffinity": geomConaffinity, "geomCondim": geomCondim, "geomBodyid": geomBodyid, "geomDataid": geomDataid, "geomMatid": geomMatid, "geomGroup": geomGroup, "geomPriority": geomPriority, "geomPlugin": geomPlugin, "geomSameframe": geomSameframe, "geomSolmix": geomSolmix, "geomSolref": geomSolref, "geomSolimp": geomSolimp, "geomSize": geomSize, "geomAabb": geomAabb, "geomRbound": geomRbound, "geomPos": geomPos, "geomQuat": geomQuat, "geomFriction": geomFriction, "geomMargin": geomMargin, "geomGap": geomGap, "geomFluid": geomFluid, "geomUser": geomUser, "geomRgba": geomRgba, "siteType": siteType, "siteBodyid": siteBodyid, "siteMatid": siteMatid, "siteGroup": siteGroup, "siteSameframe": siteSameframe, "siteSize": siteSize, "sitePos": sitePos, "siteQuat": siteQuat, "siteUser": siteUser, "siteRgba": siteRgba, "camMode": camMode, "camBodyid": camBodyid, "camTargetbodyid": camTargetbodyid, "camPos": camPos, "camQuat": camQuat, "camPoscom0": camPoscom0, "camPos0": camPos0, "camMat0": camMat0, "camProjection": camProjection, "camFovy": camFovy, "camIpd": camIpd, "camResolution": camResolution, "camOutput": camOutput, "camSensorsize": camSensorsize, "camIntrinsic": camIntrinsic, "camUser": camUser, "lightMode": lightMode, "lightBodyid": lightBodyid, "lightTargetbodyid": lightTargetbodyid, "lightType": lightType, "lightTexid": lightTexid, "lightCastshadow": lightCastshadow, "lightBulbradius": lightBulbradius, "lightIntensity": lightIntensity, "lightRange": lightRange, "lightActive": lightActive, "lightPos": lightPos, "lightDir": lightDir, "lightPoscom0": lightPoscom0, "lightPos0": lightPos0, "lightDir0": lightDir0, "lightAttenuation": lightAttenuation, "lightCutoff": lightCutoff, "lightExponent": lightExponent, "lightAmbient": lightAmbient, "lightDiffuse": lightDiffuse, "lightSpecular": lightSpecular, "flexContype": flexContype, "flexConaffinity": flexConaffinity, "flexCondim": flexCondim, "flexPriority": flexPriority, "flexSolmix": flexSolmix, "flexSolref": flexSolref, "flexSolimp": flexSolimp, "flexFriction": flexFriction, "flexMargin": flexMargin, "flexGap": flexGap, "flexInternal": flexInternal, "flexSelfcollide": flexSelfcollide, "flexActivelayers": flexActivelayers, "flexPassive": flexPassive, "flexDim": flexDim, "flexMatid": flexMatid, "flexGroup": flexGroup, "flexInterp": flexInterp, "flexCellnum": flexCellnum, "flexNodeadr": flexNodeadr, "flexNodenum": flexNodenum, "flexVertadr": flexVertadr, "flexVertnum": flexVertnum, "flexEdgeadr": flexEdgeadr, "flexEdgenum": flexEdgenum, "flexElemadr": flexElemadr, "flexElemnum": flexElemnum, "flexElemdataadr": flexElemdataadr, "flexStiffnessadr": flexStiffnessadr, "flexElemedgeadr": flexElemedgeadr, "flexBendingadr": flexBendingadr, "flexShellnum": flexShellnum, "flexShelldataadr": flexShelldataadr, "flexEvpairadr": flexEvpairadr, "flexEvpairnum": flexEvpairnum, "flexTexcoordadr": flexTexcoordadr, "flexNodebodyid": flexNodebodyid, "flexVertbodyid": flexVertbodyid, "flexVertedgeadr": flexVertedgeadr, "flexVertedgenum": flexVertedgenum, "flexVertedge": flexVertedge, "flexEdge": flexEdge, "flexEdgeflap": flexEdgeflap, "flexElem": flexElem, "flexElemtexcoord": flexElemtexcoord, "flexElemedge": flexElemedge, "flexElemlayer": flexElemlayer, "flexShell": flexShell, "flexEvpair": flexEvpair, "flexVert": flexVert, "flexVert0": flexVert0, "flexVertmetric": flexVertmetric, "flexNode": flexNode, "flexNode0": flexNode0, "flexedgeLength0": flexedgeLength0, "flexedgeInvweight0": flexedgeInvweight0, "flexRadius": flexRadius, "flexSize": flexSize, "flexStiffness": flexStiffness, "flexBending": flexBending, "flexDamping": flexDamping, "flexEdgestiffness": flexEdgestiffness, "flexEdgedamping": flexEdgedamping, "flexEdgeequality": flexEdgeequality, "flexRigid": flexRigid, "flexedgeRigid": flexedgeRigid, "flexCentered": flexCentered, "flexFlatskin": flexFlatskin, "flexBvhadr": flexBvhadr, "flexBvhnum": flexBvhnum, "flexedgeJRownnz": flexedgeJRownnz, "flexedgeJRowadr": flexedgeJRowadr, "flexedgeJColind": flexedgeJColind, "flexvertJRownnz": flexvertJRownnz, "flexvertJRowadr": flexvertJRowadr, "flexvertJColind": flexvertJColind, "flexRgba": flexRgba, "flexTexcoord": flexTexcoord, "meshVertadr": meshVertadr, "meshVertnum": meshVertnum, "meshFaceadr": meshFaceadr, "meshFacenum": meshFacenum, "meshBvhadr": meshBvhadr, "meshBvhnum": meshBvhnum, "meshOctadr": meshOctadr, "meshOctnum": meshOctnum, "meshNormaladr": meshNormaladr, "meshNormalnum": meshNormalnum, "meshTexcoordadr": meshTexcoordadr, "meshTexcoordnum": meshTexcoordnum, "meshGraphadr": meshGraphadr, "meshVert": meshVert, "meshNormal": meshNormal, "meshTexcoord": meshTexcoord, "meshFace": meshFace, "meshFacenormal": meshFacenormal, "meshFacetexcoord": meshFacetexcoord, "meshGraph": meshGraph, "meshScale": meshScale, "meshPos": meshPos, "meshQuat": meshQuat, "meshPathadr": meshPathadr, "meshPolynum": meshPolynum, "meshPolyadr": meshPolyadr, "meshPolynormal": meshPolynormal, "meshPolyvertadr": meshPolyvertadr, "meshPolyvertnum": meshPolyvertnum, "meshPolyvert": meshPolyvert, "meshPolymapadr": meshPolymapadr, "meshPolymapnum": meshPolymapnum, "meshPolymap": meshPolymap, "skinMatid": skinMatid, "skinGroup": skinGroup, "skinRgba": skinRgba, "skinInflate": skinInflate, "skinVertadr": skinVertadr, "skinVertnum": skinVertnum, "skinTexcoordadr": skinTexcoordadr, "skinFaceadr": skinFaceadr, "skinFacenum": skinFacenum, "skinBoneadr": skinBoneadr, "skinBonenum": skinBonenum, "skinVert": skinVert, "skinTexcoord": skinTexcoord, "skinFace": skinFace, "skinBonevertadr": skinBonevertadr, "skinBonevertnum": skinBonevertnum, "skinBonebindpos": skinBonebindpos, "skinBonebindquat": skinBonebindquat, "skinBonebodyid": skinBonebodyid, "skinBonevertid": skinBonevertid, "skinBonevertweight": skinBonevertweight, "skinPathadr": skinPathadr, "hfieldSize": hfieldSize, "hfieldNrow": hfieldNrow, "hfieldNcol": hfieldNcol, "hfieldAdr": hfieldAdr, "hfieldData": hfieldData, "hfieldPathadr": hfieldPathadr, "texType": texType, "texColorspace": texColorspace, "texHeight": texHeight, "texWidth": texWidth, "texNchannel": texNchannel, "texAdr": texAdr, "texData": texData, "texPathadr": texPathadr, "matTexid": matTexid, "matTexuniform": matTexuniform, "matTexrepeat": matTexrepeat, "matEmission": matEmission, "matSpecular": matSpecular, "matShininess": matShininess, "matReflectance": matReflectance, "matMetallic": matMetallic, "matRoughness": matRoughness, "matRgba": matRgba, "pairDim": pairDim, "pairGeom1": pairGeom1, "pairGeom2": pairGeom2, "pairSignature": pairSignature, "pairSolref": pairSolref, "pairSolreffriction": pairSolreffriction, "pairSolimp": pairSolimp, "pairMargin": pairMargin, "pairGap": pairGap, "pairFriction": pairFriction, "excludeSignature": excludeSignature, "eqType": eqType, "eqObj1id": eqObj1id, "eqObj2id": eqObj2id, "eqObjtype": eqObjtype, "eqActive0": eqActive0, "eqSolref": eqSolref, "eqSolimp": eqSolimp, "eqData": eqData, "tendonAdr": tendonAdr, "tendonNum": tendonNum, "tendonMatid": tendonMatid, "tendonActuatorid": tendonActuatorid, "tendonGroup": tendonGroup, "tendonTreenum": tendonTreenum, "tendonTreeid": tendonTreeid, "tenJRownnz": tenJRownnz, "tenJRowadr": tenJRowadr, "tenJColind": tenJColind, "tendonLimited": tendonLimited, "tendonActfrclimited": tendonActfrclimited, "tendonWidth": tendonWidth, "tendonSolrefLim": tendonSolrefLim, "tendonSolimpLim": tendonSolimpLim, "tendonSolrefFri": tendonSolrefFri, "tendonSolimpFri": tendonSolimpFri, "tendonRange": tendonRange, "tendonActfrcrange": tendonActfrcrange, "tendonMargin": tendonMargin, "tendonStiffness": tendonStiffness, "tendonStiffnesspoly": tendonStiffnesspoly, "tendonDamping": tendonDamping, "tendonDampingpoly": tendonDampingpoly, "tendonArmature": tendonArmature, "tendonFrictionloss": tendonFrictionloss, "tendonLengthspring": tendonLengthspring, "tendonLength0": tendonLength0, "tendonInvweight0": tendonInvweight0, "tendonUser": tendonUser, "tendonRgba": tendonRgba, "wrapType": wrapType, "wrapObjid": wrapObjid, "wrapPrm": wrapPrm, "actuatorTrntype": actuatorTrntype, "actuatorDyntype": actuatorDyntype, "actuatorGaintype": actuatorGaintype, "actuatorBiastype": actuatorBiastype, "actuatorTrnid": actuatorTrnid, "actuatorDamping": actuatorDamping, "actuatorDampingpoly": actuatorDampingpoly, "actuatorArmature": actuatorArmature, "actuatorActadr": actuatorActadr, "actuatorActnum": actuatorActnum, "actuatorGroup": actuatorGroup, "actuatorHistory": actuatorHistory, "actuatorHistoryadr": actuatorHistoryadr, "actuatorDelay": actuatorDelay, "actuatorCtrllimited": actuatorCtrllimited, "actuatorForcelimited": actuatorForcelimited, "actuatorActlimited": actuatorActlimited, "actuatorDynprm": actuatorDynprm, "actuatorGainprm": actuatorGainprm, "actuatorBiasprm": actuatorBiasprm, "actuatorActearly": actuatorActearly, "actuatorCtrlrange": actuatorCtrlrange, "actuatorForcerange": actuatorForcerange, "actuatorActrange": actuatorActrange, "actuatorGear": actuatorGear, "actuatorCranklength": actuatorCranklength, "actuatorAcc0": actuatorAcc0, "actuatorLength0": actuatorLength0, "actuatorLengthrange": actuatorLengthrange, "actuatorUser": actuatorUser, "actuatorPlugin": actuatorPlugin, "sensorType": sensorType, "sensorDatatype": sensorDatatype, "sensorNeedstage": sensorNeedstage, "sensorObjtype": sensorObjtype, "sensorObjid": sensorObjid, "sensorReftype": sensorReftype, "sensorRefid": sensorRefid, "sensorIntprm": sensorIntprm, "sensorDim": sensorDim, "sensorAdr": sensorAdr, "sensorCutoff": sensorCutoff, "sensorNoise": sensorNoise, "sensorHistory": sensorHistory, "sensorHistoryadr": sensorHistoryadr, "sensorDelay": sensorDelay, "sensorInterval": sensorInterval, "sensorUser": sensorUser, "sensorPlugin": sensorPlugin, "plugin": plugin, "pluginStateadr": pluginStateadr, "pluginStatenum": pluginStatenum, "pluginAttr": pluginAttr, "pluginAttradr": pluginAttradr, "numericAdr": numericAdr, "numericSize": numericSize, "numericData": numericData, "textAdr": textAdr, "textSize": textSize, "textData": textData, "tupleAdr": tupleAdr, "tupleSize": tupleSize, "tupleObjtype": tupleObjtype, "tupleObjid": tupleObjid, "tupleObjprm": tupleObjprm, "keyTime": keyTime, "keyQpos": keyQpos, "keyQvel": keyQvel, "keyAct": keyAct, "keyMpos": keyMpos, "keyMquat": keyMquat, "keyCtrl": keyCtrl, "nameBodyadr": nameBodyadr, "nameJntadr": nameJntadr, "nameGeomadr": nameGeomadr, "nameSiteadr": nameSiteadr, "nameCamadr": nameCamadr, "nameLightadr": nameLightadr, "nameFlexadr": nameFlexadr, "nameMeshadr": nameMeshadr, "nameSkinadr": nameSkinadr, "nameHfieldadr": nameHfieldadr, "nameTexadr": nameTexadr, "nameMatadr": nameMatadr, "namePairadr": namePairadr, "nameExcludeadr": nameExcludeadr, "nameEqadr": nameEqadr, "nameTendonadr": nameTendonadr, "nameActuatoradr": nameActuatoradr, "nameSensoradr": nameSensoradr, "nameNumericadr": nameNumericadr, "nameTextadr": nameTextadr, "nameTupleadr": nameTupleadr, "nameKeyadr": nameKeyadr, "namePluginadr": namePluginadr, "names": names, "namesMap": namesMap, "paths": paths, "bRownnz": bRownnz, "bRowadr": bRowadr, "bColind": bColind, "mRownnz": mRownnz, "mRowadr": mRowadr, "mColind": mColind, "mapM2M": mapM2M, "dRownnz": dRownnz, "dRowadr": dRowadr, "dDiag": dDiag, "dColind": dColind, "mapM2D": mapM2D, "mapD2M": mapD2M, "signature": signature])
  }
}
