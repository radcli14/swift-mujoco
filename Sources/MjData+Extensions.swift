extension MjData {
  /// size of the arena in bytes (inclusive of the stack)
  @inlinable
  public var narena: Int32 {
    get { Int32(_data.pointee.narena) }
    set { _data.pointee.narena = Int64(newValue) }
  }
  /// size of main buffer in bytes
  @inlinable
  public var nbuffer: Int32 {
    get { Int32(_data.pointee.nbuffer) }
    set { _data.pointee.nbuffer = Int64(newValue) }
  }
  /// number of plugin instances
  @inlinable
  public var nplugin: Int32 {
    get { _data.pointee.nplugin }
    set { _data.pointee.nplugin = newValue }
  }
  /// first available byte in stack (mutable)
  @inlinable
  public var pstack: Int {
    get { _data.pointee.pstack }
    set { _data.pointee.pstack = newValue }
  }
  /// value of pstack when mj_markStack was last called (mutable)
  @inlinable
  public var pbase: Int {
    get { _data.pointee.pbase }
    set { _data.pointee.pbase = newValue }
  }
  /// first available byte in arena
  @inlinable
  public var parena: Int {
    get { _data.pointee.parena }
    set { _data.pointee.parena = newValue }
  }
  /// maximum stack allocation in bytes (mutable)
  @inlinable
  public var maxuseStack: Int32 {
    get { Int32(_data.pointee.maxuse_stack) }
    set { _data.pointee.maxuse_stack = Int64(newValue) }
  }
  /// maximum arena allocation in bytes
  @inlinable
  public var maxuseArena: Int32 {
    get { Int32(_data.pointee.maxuse_arena) }
    set { _data.pointee.maxuse_arena = Int64(newValue) }
  }
  /// maximum number of contacts
  @inlinable
  public var maxuseCon: Int32 {
    get { _data.pointee.maxuse_con }
    set { _data.pointee.maxuse_con = newValue }
  }
  /// maximum number of scalar constraints
  @inlinable
  public var maxuseEfc: Int32 {
    get { _data.pointee.maxuse_efc }
    set { _data.pointee.maxuse_efc = newValue }
  }
  /// number of solver iterations, per island
  @inlinable
  public var solverNiter: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32) {
    get { _data.pointee.solver_niter }
    set { _data.pointee.solver_niter = newValue }
  }
  /// number of nonzeros in Hessian or efc_AR, per island
  @inlinable
  public var solverNnz: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32) {
    get { _data.pointee.solver_nnz }
    set { _data.pointee.solver_nnz = newValue }
  }
  /// forward-inverse comparison: qfrc, efc
  @inlinable
  public var solverFwdinv: (Double, Double) {
    get { _data.pointee.solver_fwdinv }
    set { _data.pointee.solver_fwdinv = newValue }
  }
  /// warning statistics (mutable)
  @inlinable
  public var warning: MjArray<MjWarningStat> {
    get { MjArray<MjWarningStat>(array: withUnsafeMutablePointer(to: &_data.pointee.warning, { UnsafeMutableRawPointer($0).assumingMemoryBound(to: MjWarningStat.self) }), object: _storage, len: 7) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjWarningStat> = withUnsafeMutablePointer(to: &_data.pointee.warning, { UnsafeMutableRawPointer($0).assumingMemoryBound(to: MjWarningStat.self) })
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(7))
    }
  }
  /// timer statistics
  @inlinable
  public var timer: MjArray<MjTimerStat> {
    get { MjArray<MjTimerStat>(array: withUnsafeMutablePointer(to: &_data.pointee.timer, { UnsafeMutableRawPointer($0).assumingMemoryBound(to: MjTimerStat.self) }), object: _storage, len: 15) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjTimerStat> = withUnsafeMutablePointer(to: &_data.pointee.timer, { UnsafeMutableRawPointer($0).assumingMemoryBound(to: MjTimerStat.self) })
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(15))
    }
  }
  /// number of detected contacts
  @inlinable
  public var ncon: Int32 {
    get { _data.pointee.ncon }
    set { _data.pointee.ncon = newValue }
  }
  /// number of equality constraints
  @inlinable
  public var ne: Int32 {
    get { _data.pointee.ne }
    set { _data.pointee.ne = newValue }
  }
  /// number of friction constraints
  @inlinable
  public var nf: Int32 {
    get { _data.pointee.nf }
    set { _data.pointee.nf = newValue }
  }
  /// number of limit constraints
  @inlinable
  public var nl: Int32 {
    get { _data.pointee.nl }
    set { _data.pointee.nl = newValue }
  }
  /// number of constraints
  @inlinable
  public var nefc: Int32 {
    get { _data.pointee.nefc }
    set { _data.pointee.nefc = newValue }
  }
  /// number of non-zeros in constraint Jacobian
  @inlinable
  public var nJ: Int32 {
    get { _data.pointee.nJ }
    set { _data.pointee.nJ = newValue }
  }
  /// number of non-zeros in constraint inverse inertia square root
  @inlinable
  public var nY: Int32 {
    get { _data.pointee.nY }
    set { _data.pointee.nY = newValue }
  }
  /// number of non-zeros in constraint inverse inertia matrix
  @inlinable
  public var nA: Int32 {
    get { _data.pointee.nA }
    set { _data.pointee.nA = newValue }
  }
  /// number of detected constraint islands
  @inlinable
  public var nisland: Int32 {
    get { _data.pointee.nisland }
    set { _data.pointee.nisland = newValue }
  }
  /// number of dofs in all islands
  @inlinable
  public var nidof: Int32 {
    get { _data.pointee.nidof }
    set { _data.pointee.nidof = newValue }
  }
  /// number of awake trees
  @inlinable
  public var ntreeAwake: Int32 {
    get { _data.pointee.ntree_awake }
    set { _data.pointee.ntree_awake = newValue }
  }
  /// number of awake dynamic and static bodies
  @inlinable
  public var nbodyAwake: Int32 {
    get { _data.pointee.nbody_awake }
    set { _data.pointee.nbody_awake = newValue }
  }
  /// number of bodies with awake parents
  @inlinable
  public var nparentAwake: Int32 {
    get { _data.pointee.nparent_awake }
    set { _data.pointee.nparent_awake = newValue }
  }
  /// number of awake dofs
  @inlinable
  public var nvAwake: Int32 {
    get { _data.pointee.nv_awake }
    set { _data.pointee.nv_awake = newValue }
  }
  /// has mj_energyPos been called
  @inlinable
  public var flgEnergypos: Bool {
    get { _data.pointee.flg_energypos }
    set { _data.pointee.flg_energypos = newValue }
  }
  /// has mj_energyVel been called
  @inlinable
  public var flgEnergyvel: Bool {
    get { _data.pointee.flg_energyvel }
    set { _data.pointee.flg_energyvel = newValue }
  }
  /// has mj_subtreeVel been called
  @inlinable
  public var flgSubtreevel: Bool {
    get { _data.pointee.flg_subtreevel }
    set { _data.pointee.flg_subtreevel = newValue }
  }
  /// has mj_rnePostConstraint been called
  @inlinable
  public var flgRnepost: Bool {
    get { _data.pointee.flg_rnepost }
    set { _data.pointee.flg_rnepost = newValue }
  }
  /// simulation time
  @inlinable
  public var time: Double {
    get { _data.pointee.time }
    set { _data.pointee.time = newValue }
  }
  /// potential, kinetic energy
  @inlinable
  public var energy: (Double, Double) {
    get { _data.pointee.energy }
    set { _data.pointee.energy = newValue }
  }
  /// position                                         (nq x 1)
  @inlinable
  public var qpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qpos, object: _storage, len: nq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nq * 1))
    }
  }
  /// velocity                                         (nv x 1)
  @inlinable
  public var qvel: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qvel, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qvel
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// actuator activation                              (na x 1)
  @inlinable
  public var act: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.act, object: _storage, len: na * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.act
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(na * 1))
    }
  }
  /// history buffer                                   (nhistory x 1)
  @inlinable
  public var history: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.history, object: _storage, len: nhistory * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.history
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nhistory * 1))
    }
  }
  /// acceleration used for warmstart                  (nv x 1)
  @inlinable
  public var qaccWarmstart: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qacc_warmstart, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qacc_warmstart
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// plugin state                                     (npluginstate x 1)
  @inlinable
  public var pluginState: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.plugin_state, object: _storage, len: npluginstate * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.plugin_state
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(npluginstate * 1))
    }
  }
  /// control                                          (nu x 1)
  @inlinable
  public var ctrl: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ctrl, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ctrl
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// applied generalized force                        (nv x 1)
  @inlinable
  public var qfrcApplied: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_applied, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_applied
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// applied Cartesian force/torque                   (nbody x 6)
  @inlinable
  public var xfrcApplied: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xfrc_applied, object: _storage, len: nbody * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xfrc_applied
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 6))
    }
  }
  /// enable/disable constraints                       (neq x 1)
  @inlinable
  public var eqActive: MjArray<Bool> {
    get { MjArray<Bool>(array: _data.pointee.eq_active, object: _storage, len: neq * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _data.pointee.eq_active
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(neq * 1))
    }
  }
  /// positions of mocap bodies                        (nmocap x 3)
  @inlinable
  public var mocapPos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.mocap_pos, object: _storage, len: nmocap * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.mocap_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmocap * 3))
    }
  }
  /// orientations of mocap bodies                     (nmocap x 4)
  @inlinable
  public var mocapQuat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.mocap_quat, object: _storage, len: nmocap * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.mocap_quat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nmocap * 4))
    }
  }
  /// acceleration                                     (nv x 1)
  @inlinable
  public var qacc: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qacc, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qacc
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// time-derivative of actuator activation           (na x 1)
  @inlinable
  public var actDot: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.act_dot, object: _storage, len: na * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.act_dot
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(na * 1))
    }
  }
  /// user data, not touched by engine                 (nuserdata x 1)
  @inlinable
  public var userdata: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.userdata, object: _storage, len: nuserdata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.userdata
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nuserdata * 1))
    }
  }
  /// sensor data array                                (nsensordata x 1)
  @inlinable
  public var sensordata: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.sensordata, object: _storage, len: nsensordata * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.sensordata
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsensordata * 1))
    }
  }
  /// <0: awake; >=0: index cycle of sleeping trees    (ntree x 1)
  @inlinable
  public var treeAsleep: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.tree_asleep, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.tree_asleep
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// copy of m->plugin, required for deletion         (nplugin x 1)
  @inlinable
  public var plugin: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.plugin, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.plugin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// pointer to plugin-managed data structure         (nplugin x 1)
  @inlinable
  public var pluginData: MjArray<UInt> {
    get { MjArray<UInt>(array: _data.pointee.plugin_data, object: _storage, len: nplugin * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<UInt> = _data.pointee.plugin_data
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nplugin * 1))
    }
  }
  /// Cartesian position of body frame                 (nbody x 3)
  @inlinable
  public var xpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xpos, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// Cartesian orientation of body frame              (nbody x 4)
  @inlinable
  public var xquat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xquat, object: _storage, len: nbody * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xquat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 4))
    }
  }
  /// Cartesian orientation of body frame              (nbody x 9)
  @inlinable
  public var xmat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xmat, object: _storage, len: nbody * 9) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xmat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 9))
    }
  }
  /// Cartesian position of body com                   (nbody x 3)
  @inlinable
  public var xipos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xipos, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xipos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// Cartesian orientation of body inertia            (nbody x 9)
  @inlinable
  public var ximat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ximat, object: _storage, len: nbody * 9) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ximat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 9))
    }
  }
  /// Cartesian position of joint anchor               (njnt x 3)
  @inlinable
  public var xanchor: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xanchor, object: _storage, len: njnt * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xanchor
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 3))
    }
  }
  /// Cartesian joint axis                             (njnt x 3)
  @inlinable
  public var xaxis: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.xaxis, object: _storage, len: njnt * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.xaxis
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(njnt * 3))
    }
  }
  /// Cartesian geom position                          (ngeom x 3)
  @inlinable
  public var geomXpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.geom_xpos, object: _storage, len: ngeom * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.geom_xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 3))
    }
  }
  /// Cartesian geom orientation                       (ngeom x 9)
  @inlinable
  public var geomXmat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.geom_xmat, object: _storage, len: ngeom * 9) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.geom_xmat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom * 9))
    }
  }
  /// Cartesian site position                          (nsite x 3)
  @inlinable
  public var siteXpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.site_xpos, object: _storage, len: nsite * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.site_xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 3))
    }
  }
  /// Cartesian site orientation                       (nsite x 9)
  @inlinable
  public var siteXmat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.site_xmat, object: _storage, len: nsite * 9) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.site_xmat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nsite * 9))
    }
  }
  /// Cartesian camera position                        (ncam x 3)
  @inlinable
  public var camXpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cam_xpos, object: _storage, len: ncam * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cam_xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 3))
    }
  }
  /// Cartesian camera orientation                     (ncam x 9)
  @inlinable
  public var camXmat: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cam_xmat, object: _storage, len: ncam * 9) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cam_xmat
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncam * 9))
    }
  }
  /// Cartesian light position                         (nlight x 3)
  @inlinable
  public var lightXpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.light_xpos, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.light_xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// Cartesian light direction                        (nlight x 3)
  @inlinable
  public var lightXdir: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.light_xdir, object: _storage, len: nlight * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.light_xdir
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight * 3))
    }
  }
  /// center of mass of each subtree                   (nbody x 3)
  @inlinable
  public var subtreeCom: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.subtree_com, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.subtree_com
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// com-based motion axis of each dof (rot:lin)      (nv x 6)
  @inlinable
  public var cdof: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cdof, object: _storage, len: nv * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cdof
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 6))
    }
  }
  /// com-based body inertia and mass                  (nbody x 10)
  @inlinable
  public var cinert: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cinert, object: _storage, len: nbody * 10) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cinert
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 10))
    }
  }
  /// Cartesian flex vertex positions                  (nflexvert x 3)
  @inlinable
  public var flexvertXpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexvert_xpos, object: _storage, len: nflexvert * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexvert_xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 3))
    }
  }
  /// flex element bounding boxes (center, size)       (nflexelem x 6)
  @inlinable
  public var flexelemAabb: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexelem_aabb, object: _storage, len: nflexelem * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexelem_aabb
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexelem * 6))
    }
  }
  /// flex edge Jacobian                               (nJfe x 1)
  @inlinable
  public var flexedgeJ: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexedge_J, object: _storage, len: nJfe * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexedge_J
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJfe * 1))
    }
  }
  /// flex edge lengths                                (nflexedge x 1)
  @inlinable
  public var flexedgeLength: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexedge_length, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexedge_length
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// flex vertex Jacobian                             (nJfv x 2)
  @inlinable
  public var flexvertJ: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexvert_J, object: _storage, len: nJfv * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexvert_J
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJfv * 2))
    }
  }
  /// flex vertex lengths                              (nflexvert x 2)
  @inlinable
  public var flexvertLength: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexvert_length, object: _storage, len: nflexvert * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexvert_length
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexvert * 2))
    }
  }
  /// global bounding box (center, size)               (nbvhdynamic x 6)
  @inlinable
  public var bvhAabbDyn: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.bvh_aabb_dyn, object: _storage, len: nbvhdynamic * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.bvh_aabb_dyn
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbvhdynamic * 6))
    }
  }
  /// start address of tendon's path                   (ntendon x 1)
  @inlinable
  public var tenWrapadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.ten_wrapadr, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.ten_wrapadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// number of wrap points in path                    (ntendon x 1)
  @inlinable
  public var tenWrapnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.ten_wrapnum, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.ten_wrapnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// tendon Jacobian                                  (nJten x 1)
  @inlinable
  public var tenJ: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ten_J, object: _storage, len: nJten * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ten_J
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJten * 1))
    }
  }
  /// tendon lengths                                   (ntendon x 1)
  @inlinable
  public var tenLength: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ten_length, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ten_length
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// geom id; -1: site; -2: pulley                    (nwrap x 2)
  @inlinable
  public var wrapObj: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.wrap_obj, object: _storage, len: nwrap * 2) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.wrap_obj
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nwrap * 2))
    }
  }
  /// Cartesian 3D points in all paths                 (nwrap x 6)
  @inlinable
  public var wrapXpos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.wrap_xpos, object: _storage, len: nwrap * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.wrap_xpos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nwrap * 6))
    }
  }
  /// actuator lengths                                 (nu x 1)
  @inlinable
  public var actuatorLength: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.actuator_length, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.actuator_length
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// number of non-zeros in actuator_moment row       (nu x 1)
  @inlinable
  public var momentRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.moment_rownnz, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.moment_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// row start address in colind array                (nu x 1)
  @inlinable
  public var momentRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.moment_rowadr, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.moment_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// column indices in sparse Jacobian                (nJmom x 1)
  @inlinable
  public var momentColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.moment_colind, object: _storage, len: nJmom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.moment_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJmom * 1))
    }
  }
  /// actuator moments                                 (nJmom x 1)
  @inlinable
  public var actuatorMoment: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.actuator_moment, object: _storage, len: nJmom * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.actuator_moment
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJmom * 1))
    }
  }
  /// com-based composite inertia and mass             (nbody x 10)
  @inlinable
  public var crb: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.crb, object: _storage, len: nbody * 10) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.crb
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 10))
    }
  }
  /// inertia (sparse)                                 (nM x 1)
  @inlinable
  public var qM: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qM, object: _storage, len: nM * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qM
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nM * 1))
    }
  }
  /// reduced inertia (compressed sparse row)          (nC x 1)
  @inlinable
  public var m: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.M, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.M
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// L'*D*L factorization of M (sparse)               (nC x 1)
  @inlinable
  public var qLd: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qLD, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qLD
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// 1/diag(D)                                        (nv x 1)
  @inlinable
  public var qLDiagInv: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qLDiagInv, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qLDiagInv
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// was bounding volume checked for collision        (nbvh x 1)
  @inlinable
  public var bvhActive: MjArray<Bool> {
    get { MjArray<Bool>(array: _data.pointee.bvh_active, object: _storage, len: nbvh * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Bool> = _data.pointee.bvh_active
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbvh * 1))
    }
  }
  /// is tree awake; 0: asleep; 1: awake               (ntree x 1)
  @inlinable
  public var treeAwake: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.tree_awake, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.tree_awake
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// body sleep state (mjtSleepState)                 (nbody x 1)
  @inlinable
  public var bodyAwake: MjArray<MjtSleepState> {
    get { MjArray<MjtSleepState>(array: UnsafeMutableRawPointer(_data.pointee.body_awake).assumingMemoryBound(to: MjtSleepState.self), object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtSleepState> = UnsafeMutableRawPointer(_data.pointee.body_awake).assumingMemoryBound(to: MjtSleepState.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// indices of awake and static bodies               (nbody x 1)
  @inlinable
  public var bodyAwakeInd: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.body_awake_ind, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.body_awake_ind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// indices of bodies with awake or static parents   (nbody x 1)
  @inlinable
  public var parentAwakeInd: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.parent_awake_ind, object: _storage, len: nbody * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.parent_awake_ind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 1))
    }
  }
  /// indices of awake dofs                            (nv x 1)
  @inlinable
  public var dofAwakeInd: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.dof_awake_ind, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.dof_awake_ind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// flex edge velocities                             (nflexedge x 1)
  @inlinable
  public var flexedgeVelocity: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.flexedge_velocity, object: _storage, len: nflexedge * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.flexedge_velocity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflexedge * 1))
    }
  }
  /// tendon velocities                                (ntendon x 1)
  @inlinable
  public var tenVelocity: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ten_velocity, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ten_velocity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// actuator velocities                              (nu x 1)
  @inlinable
  public var actuatorVelocity: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.actuator_velocity, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.actuator_velocity
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// com-based velocity (rot:lin)                     (nbody x 6)
  @inlinable
  public var cvel: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cvel, object: _storage, len: nbody * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cvel
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 6))
    }
  }
  /// time-derivative of cdof (rot:lin)                (nv x 6)
  @inlinable
  public var cdofDot: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cdof_dot, object: _storage, len: nv * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cdof_dot
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 6))
    }
  }
  /// C(qpos,qvel)                                     (nv x 1)
  @inlinable
  public var qfrcBias: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_bias, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_bias
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// passive spring force                             (nv x 1)
  @inlinable
  public var qfrcSpring: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_spring, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_spring
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// passive damper force                             (nv x 1)
  @inlinable
  public var qfrcDamper: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_damper, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_damper
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// passive gravity compensation force               (nv x 1)
  @inlinable
  public var qfrcGravcomp: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_gravcomp, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_gravcomp
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// passive fluid force                              (nv x 1)
  @inlinable
  public var qfrcFluid: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_fluid, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_fluid
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// total passive force                              (nv x 1)
  @inlinable
  public var qfrcPassive: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_passive, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_passive
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// linear velocity of subtree com                   (nbody x 3)
  @inlinable
  public var subtreeLinvel: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.subtree_linvel, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.subtree_linvel
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// angular momentum about subtree com               (nbody x 3)
  @inlinable
  public var subtreeAngmom: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.subtree_angmom, object: _storage, len: nbody * 3) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.subtree_angmom
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 3))
    }
  }
  /// L'*D*L factorization of modified M               (nC x 1)
  @inlinable
  public var qH: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qH, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qH
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// 1/diag(D) of modified M                          (nv x 1)
  @inlinable
  public var qHDiagInv: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qHDiagInv, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qHDiagInv
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// d (passive + actuator - bias) / d qvel           (nD x 1)
  @inlinable
  public var qDeriv: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qDeriv, object: _storage, len: nD * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qDeriv
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nD * 1))
    }
  }
  /// sparse LU of (qM - dt*qDeriv)                    (nD x 1)
  @inlinable
  public var qLu: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qLU, object: _storage, len: nD * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qLU
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nD * 1))
    }
  }
  /// actuator force in actuation space                (nu x 1)
  @inlinable
  public var actuatorForce: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.actuator_force, object: _storage, len: nu * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.actuator_force
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nu * 1))
    }
  }
  /// actuator force                                   (nv x 1)
  @inlinable
  public var qfrcActuator: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_actuator, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_actuator
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// net unconstrained force                          (nv x 1)
  @inlinable
  public var qfrcSmooth: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_smooth, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_smooth
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// unconstrained acceleration                       (nv x 1)
  @inlinable
  public var qaccSmooth: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qacc_smooth, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qacc_smooth
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// constraint force                                 (nv x 1)
  @inlinable
  public var qfrcConstraint: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.qfrc_constraint, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.qfrc_constraint
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// com-based acceleration                           (nbody x 6)
  @inlinable
  public var cacc: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cacc, object: _storage, len: nbody * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cacc
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 6))
    }
  }
  /// com-based interaction force with parent          (nbody x 6)
  @inlinable
  public var cfrcInt: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cfrc_int, object: _storage, len: nbody * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cfrc_int
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 6))
    }
  }
  /// com-based external force on body                 (nbody x 6)
  @inlinable
  public var cfrcExt: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.cfrc_ext, object: _storage, len: nbody * 6) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.cfrc_ext
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nbody * 6))
    }
  }
  /// array of all detected contacts                   (ncon x 1)
  @inlinable
  public var contact: MjArray<MjContact> {
    get { MjArray<MjContact>(array: UnsafeMutableRawPointer(_data.pointee.contact).assumingMemoryBound(to: MjContact.self), object: _storage, len: ncon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjContact> = UnsafeMutableRawPointer(_data.pointee.contact).assumingMemoryBound(to: MjContact.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ncon * 1))
    }
  }
  /// constraint type (mjtConstraint)                  (nefc x 1)
  @inlinable
  public var efcType: MjArray<MjtConstraint> {
    get { MjArray<MjtConstraint>(array: UnsafeMutableRawPointer(_data.pointee.efc_type).assumingMemoryBound(to: MjtConstraint.self), object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtConstraint> = UnsafeMutableRawPointer(_data.pointee.efc_type).assumingMemoryBound(to: MjtConstraint.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// id of object of specified type                   (nefc x 1)
  @inlinable
  public var efcId: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_id, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_id
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// number of non-zeros in constraint Jacobian row   (nefc x 1)
  @inlinable
  public var efcJRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_J_rownnz, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_J_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// row start address in colind array                (nefc x 1)
  @inlinable
  public var efcJRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_J_rowadr, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_J_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// number of subsequent rows in supernode           (nefc x 1)
  @inlinable
  public var efcJRowsuper: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_J_rowsuper, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_J_rowsuper
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// column indices in constraint Jacobian            (nJ x 1)
  @inlinable
  public var efcJColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_J_colind, object: _storage, len: nJ * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_J_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJ * 1))
    }
  }
  /// constraint Jacobian                              (nJ x 1)
  @inlinable
  public var efcJ: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_J, object: _storage, len: nJ * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_J
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJ * 1))
    }
  }
  /// constraint position (equality, contact)          (nefc x 1)
  @inlinable
  public var efcPos: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_pos, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_pos
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// inclusion margin (contact)                       (nefc x 1)
  @inlinable
  public var efcMargin: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_margin, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_margin
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// frictionloss (friction)                          (nefc x 1)
  @inlinable
  public var efcFrictionloss: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_frictionloss, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_frictionloss
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// approximation to diagonal of A                   (nefc x 1)
  @inlinable
  public var efcDiagApprox: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_diagApprox, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_diagApprox
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// stiffness, damping, impedance, imp'              (nefc x 4)
  @inlinable
  public var efcKbip: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_KBIP, object: _storage, len: nefc * 4) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_KBIP
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 4))
    }
  }
  /// constraint mass                                  (nefc x 1)
  @inlinable
  public var efcD: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_D, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_D
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// inverse constraint mass                          (nefc x 1)
  @inlinable
  public var efcR: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_R, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_R
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// first efc address involving tendon; -1: none     (ntendon x 1)
  @inlinable
  public var tendonEfcadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.tendon_efcadr, object: _storage, len: ntendon * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.tendon_efcadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntendon * 1))
    }
  }
  /// island id of this tree; -1: none                 (ntree x 1)
  @inlinable
  public var treeIsland: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.tree_island, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.tree_island
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// number of trees in this island                   (nisland x 1)
  @inlinable
  public var islandNtree: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_ntree, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_ntree
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// island start address in itree vector             (nisland x 1)
  @inlinable
  public var islandItreeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_itreeadr, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_itreeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// map from itree to tree                           (ntree x 1)
  @inlinable
  public var mapItree2tree: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.map_itree2tree, object: _storage, len: ntree * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.map_itree2tree
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ntree * 1))
    }
  }
  /// island id of this dof; -1: none                  (nv x 1)
  @inlinable
  public var dofIsland: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.dof_island, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.dof_island
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// number of dofs in this island                    (nisland x 1)
  @inlinable
  public var islandNv: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_nv, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_nv
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// island start address in idof vector              (nisland x 1)
  @inlinable
  public var islandIdofadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_idofadr, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_idofadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// island start address in dof vector               (nisland x 1)
  @inlinable
  public var islandDofadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_dofadr, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_dofadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// map from dof to idof                             (nv x 1)
  @inlinable
  public var mapDof2idof: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.map_dof2idof, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.map_dof2idof
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// map from idof to dof;  >= nidof: unconstrained   (nv x 1)
  @inlinable
  public var mapIdof2dof: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.map_idof2dof, object: _storage, len: nv * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.map_idof2dof
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nv * 1))
    }
  }
  /// net unconstrained force                          (nidof x 1)
  @inlinable
  public var ifrcSmooth: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ifrc_smooth, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ifrc_smooth
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  /// unconstrained acceleration                       (nidof x 1)
  @inlinable
  public var iaccSmooth: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iacc_smooth, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iacc_smooth
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  /// inertia: non-zeros in each row                   (nidof x 1)
  @inlinable
  public var iMRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iM_rownnz, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iM_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  /// inertia: address of each row in iM_colind        (nidof x 1)
  @inlinable
  public var iMRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iM_rowadr, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iM_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  /// inertia: column indices of non-zeros             (nC x 1)
  @inlinable
  public var iMColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iM_colind, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iM_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// total inertia (sparse)                           (nC x 1)
  @inlinable
  public var iM: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iM, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iM
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// L'*D*L factorization of M (sparse)               (nC x 1)
  @inlinable
  public var iLd: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iLD, object: _storage, len: nC * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iLD
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nC * 1))
    }
  }
  /// 1/diag(D)                                        (nidof x 1)
  @inlinable
  public var iLDiagInv: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iLDiagInv, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iLDiagInv
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  /// acceleration                                     (nidof x 1)
  @inlinable
  public var iacc: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iacc, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iacc
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  /// island id of this constraint                     (nefc x 1)
  @inlinable
  public var efcIsland: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_island, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_island
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// number of equality constraints in island         (nisland x 1)
  @inlinable
  public var islandNe: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_ne, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_ne
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// number of friction constraints in island         (nisland x 1)
  @inlinable
  public var islandNf: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_nf, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_nf
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// number of constraints in island                  (nisland x 1)
  @inlinable
  public var islandNefc: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_nefc, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_nefc
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// start address in iefc vector                     (nisland x 1)
  @inlinable
  public var islandIefcadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.island_iefcadr, object: _storage, len: nisland * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.island_iefcadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nisland * 1))
    }
  }
  /// map from efc to iefc                             (nefc x 1)
  @inlinable
  public var mapEfc2iefc: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.map_efc2iefc, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.map_efc2iefc
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// map from iefc to efc                             (nefc x 1)
  @inlinable
  public var mapIefc2efc: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.map_iefc2efc, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.map_iefc2efc
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint type (mjtConstraint)                  (nefc x 1)
  @inlinable
  public var iefcType: MjArray<MjtConstraint> {
    get { MjArray<MjtConstraint>(array: UnsafeMutableRawPointer(_data.pointee.iefc_type).assumingMemoryBound(to: MjtConstraint.self), object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtConstraint> = UnsafeMutableRawPointer(_data.pointee.iefc_type).assumingMemoryBound(to: MjtConstraint.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// id of object of specified type                   (nefc x 1)
  @inlinable
  public var iefcId: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iefc_id, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iefc_id
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// number of non-zeros in constraint Jacobian row   (nefc x 1)
  @inlinable
  public var iefcJRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iefc_J_rownnz, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iefc_J_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// row start address in colind array                (nefc x 1)
  @inlinable
  public var iefcJRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iefc_J_rowadr, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iefc_J_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// number of subsequent rows in supernode           (nefc x 1)
  @inlinable
  public var iefcJRowsuper: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iefc_J_rowsuper, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iefc_J_rowsuper
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// column indices in constraint Jacobian            (nJ x 1)
  @inlinable
  public var iefcJColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.iefc_J_colind, object: _storage, len: nJ * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.iefc_J_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJ * 1))
    }
  }
  /// constraint Jacobian                              (nJ x 1)
  @inlinable
  public var iefcJ: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iefc_J, object: _storage, len: nJ * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iefc_J
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nJ * 1))
    }
  }
  /// frictionloss (friction)                          (nefc x 1)
  @inlinable
  public var iefcFrictionloss: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iefc_frictionloss, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iefc_frictionloss
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint mass                                  (nefc x 1)
  @inlinable
  public var iefcD: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iefc_D, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iefc_D
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// inverse constraint mass                          (nefc x 1)
  @inlinable
  public var iefcR: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iefc_R, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iefc_R
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// number of non-zeros in Y row                     (nefc x 1)
  @inlinable
  public var efcYRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_Y_rownnz, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_Y_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// row start address in Y colind array              (nefc x 1)
  @inlinable
  public var efcYRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_Y_rowadr, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_Y_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// column indices in sparse Y                       (nY x 1)
  @inlinable
  public var efcYColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_Y_colind, object: _storage, len: nY * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_Y_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nY * 1))
    }
  }
  /// whitened Jacobian Y = J*M^(-1/2)                 (nY x 1)
  @inlinable
  public var efcY: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_Y, object: _storage, len: nY * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_Y
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nY * 1))
    }
  }
  /// number of non-zeros in AR                        (nefc x 1)
  @inlinable
  public var efcArRownnz: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_AR_rownnz, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_AR_rownnz
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// row start address in AR colind array             (nefc x 1)
  @inlinable
  public var efcArRowadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_AR_rowadr, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_AR_rowadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// column indices in sparse AR                      (nA x 1)
  @inlinable
  public var efcArColind: MjArray<Int32> {
    get { MjArray<Int32>(array: _data.pointee.efc_AR_colind, object: _storage, len: nA * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _data.pointee.efc_AR_colind
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nA * 1))
    }
  }
  /// J*inv(M)*J' + R                                  (nA x 1)
  @inlinable
  public var efcAr: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_AR, object: _storage, len: nA * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_AR
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nA * 1))
    }
  }
  /// velocity in constraint space: J*qvel             (nefc x 1)
  @inlinable
  public var efcVel: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_vel, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_vel
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// reference pseudo-acceleration                    (nefc x 1)
  @inlinable
  public var efcAref: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_aref, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_aref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// linear cost term: J*qacc_smooth - aref           (nefc x 1)
  @inlinable
  public var efcB: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_b, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_b
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// reference pseudo-acceleration                    (nefc x 1)
  @inlinable
  public var iefcAref: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iefc_aref, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iefc_aref
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint state (mjtConstraintState)            (nefc x 1)
  @inlinable
  public var iefcState: MjArray<MjtConstraintState> {
    get { MjArray<MjtConstraintState>(array: UnsafeMutableRawPointer(_data.pointee.iefc_state).assumingMemoryBound(to: MjtConstraintState.self), object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtConstraintState> = UnsafeMutableRawPointer(_data.pointee.iefc_state).assumingMemoryBound(to: MjtConstraintState.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint force in constraint space             (nefc x 1)
  @inlinable
  public var iefcForce: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.iefc_force, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.iefc_force
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint state (mjtConstraintState)            (nefc x 1)
  @inlinable
  public var efcState: MjArray<MjtConstraintState> {
    get { MjArray<MjtConstraintState>(array: UnsafeMutableRawPointer(_data.pointee.efc_state).assumingMemoryBound(to: MjtConstraintState.self), object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjtConstraintState> = UnsafeMutableRawPointer(_data.pointee.efc_state).assumingMemoryBound(to: MjtConstraintState.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint force in constraint space             (nefc x 1)
  @inlinable
  public var efcForce: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.efc_force, object: _storage, len: nefc * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.efc_force
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nefc * 1))
    }
  }
  /// constraint force                                 (nidof x 1)
  @inlinable
  public var ifrcConstraint: MjArray<Double> {
    get { MjArray<Double>(array: _data.pointee.ifrc_constraint, object: _storage, len: nidof * 1) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Double> = _data.pointee.ifrc_constraint
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nidof * 1))
    }
  }
  @inlinable
  public var threadpool: UInt {
    get { _data.pointee.threadpool }
    set { _data.pointee.threadpool = newValue }
  }
  /// also held by the mjSpec that compiled the model
  @inlinable
  public var signature: UInt64 {
    get { _data.pointee.signature }
    set { _data.pointee.signature = newValue }
  }
}
extension MjData: CustomReflectable {
  public var customMirror: Mirror {
    Mirror(self, children: ["narena": narena, "nbuffer": nbuffer, "nplugin": nplugin, "pstack": pstack, "pbase": pbase, "parena": parena, "maxuseStack": maxuseStack, "maxuseArena": maxuseArena, "maxuseCon": maxuseCon, "maxuseEfc": maxuseEfc, "solverNiter": solverNiter, "solverNnz": solverNnz, "solverFwdinv": solverFwdinv, "warning": warning, "timer": timer, "ncon": ncon, "ne": ne, "nf": nf, "nl": nl, "nefc": nefc, "nJ": nJ, "nY": nY, "nA": nA, "nisland": nisland, "nidof": nidof, "ntreeAwake": ntreeAwake, "nbodyAwake": nbodyAwake, "nparentAwake": nparentAwake, "nvAwake": nvAwake, "flgEnergypos": flgEnergypos, "flgEnergyvel": flgEnergyvel, "flgSubtreevel": flgSubtreevel, "flgRnepost": flgRnepost, "time": time, "energy": energy, "qpos": qpos, "qvel": qvel, "act": act, "history": history, "qaccWarmstart": qaccWarmstart, "pluginState": pluginState, "ctrl": ctrl, "qfrcApplied": qfrcApplied, "xfrcApplied": xfrcApplied, "eqActive": eqActive, "mocapPos": mocapPos, "mocapQuat": mocapQuat, "qacc": qacc, "actDot": actDot, "userdata": userdata, "sensordata": sensordata, "treeAsleep": treeAsleep, "plugin": plugin, "pluginData": pluginData, "xpos": xpos, "xquat": xquat, "xmat": xmat, "xipos": xipos, "ximat": ximat, "xanchor": xanchor, "xaxis": xaxis, "geomXpos": geomXpos, "geomXmat": geomXmat, "siteXpos": siteXpos, "siteXmat": siteXmat, "camXpos": camXpos, "camXmat": camXmat, "lightXpos": lightXpos, "lightXdir": lightXdir, "subtreeCom": subtreeCom, "cdof": cdof, "cinert": cinert, "flexvertXpos": flexvertXpos, "flexelemAabb": flexelemAabb, "flexedgeJ": flexedgeJ, "flexedgeLength": flexedgeLength, "flexvertJ": flexvertJ, "flexvertLength": flexvertLength, "bvhAabbDyn": bvhAabbDyn, "tenWrapadr": tenWrapadr, "tenWrapnum": tenWrapnum, "tenJ": tenJ, "tenLength": tenLength, "wrapObj": wrapObj, "wrapXpos": wrapXpos, "actuatorLength": actuatorLength, "momentRownnz": momentRownnz, "momentRowadr": momentRowadr, "momentColind": momentColind, "actuatorMoment": actuatorMoment, "crb": crb, "qM": qM, "m": m, "qLd": qLd, "qLDiagInv": qLDiagInv, "bvhActive": bvhActive, "treeAwake": treeAwake, "bodyAwake": bodyAwake, "bodyAwakeInd": bodyAwakeInd, "parentAwakeInd": parentAwakeInd, "dofAwakeInd": dofAwakeInd, "flexedgeVelocity": flexedgeVelocity, "tenVelocity": tenVelocity, "actuatorVelocity": actuatorVelocity, "cvel": cvel, "cdofDot": cdofDot, "qfrcBias": qfrcBias, "qfrcSpring": qfrcSpring, "qfrcDamper": qfrcDamper, "qfrcGravcomp": qfrcGravcomp, "qfrcFluid": qfrcFluid, "qfrcPassive": qfrcPassive, "subtreeLinvel": subtreeLinvel, "subtreeAngmom": subtreeAngmom, "qH": qH, "qHDiagInv": qHDiagInv, "qDeriv": qDeriv, "qLu": qLu, "actuatorForce": actuatorForce, "qfrcActuator": qfrcActuator, "qfrcSmooth": qfrcSmooth, "qaccSmooth": qaccSmooth, "qfrcConstraint": qfrcConstraint, "cacc": cacc, "cfrcInt": cfrcInt, "cfrcExt": cfrcExt, "contact": contact, "efcType": efcType, "efcId": efcId, "efcJRownnz": efcJRownnz, "efcJRowadr": efcJRowadr, "efcJRowsuper": efcJRowsuper, "efcJColind": efcJColind, "efcJ": efcJ, "efcPos": efcPos, "efcMargin": efcMargin, "efcFrictionloss": efcFrictionloss, "efcDiagApprox": efcDiagApprox, "efcKbip": efcKbip, "efcD": efcD, "efcR": efcR, "tendonEfcadr": tendonEfcadr, "treeIsland": treeIsland, "islandNtree": islandNtree, "islandItreeadr": islandItreeadr, "mapItree2tree": mapItree2tree, "dofIsland": dofIsland, "islandNv": islandNv, "islandIdofadr": islandIdofadr, "islandDofadr": islandDofadr, "mapDof2idof": mapDof2idof, "mapIdof2dof": mapIdof2dof, "ifrcSmooth": ifrcSmooth, "iaccSmooth": iaccSmooth, "iMRownnz": iMRownnz, "iMRowadr": iMRowadr, "iMColind": iMColind, "iM": iM, "iLd": iLd, "iLDiagInv": iLDiagInv, "iacc": iacc, "efcIsland": efcIsland, "islandNe": islandNe, "islandNf": islandNf, "islandNefc": islandNefc, "islandIefcadr": islandIefcadr, "mapEfc2iefc": mapEfc2iefc, "mapIefc2efc": mapIefc2efc, "iefcType": iefcType, "iefcId": iefcId, "iefcJRownnz": iefcJRownnz, "iefcJRowadr": iefcJRowadr, "iefcJRowsuper": iefcJRowsuper, "iefcJColind": iefcJColind, "iefcJ": iefcJ, "iefcFrictionloss": iefcFrictionloss, "iefcD": iefcD, "iefcR": iefcR, "efcYRownnz": efcYRownnz, "efcYRowadr": efcYRowadr, "efcYColind": efcYColind, "efcY": efcY, "efcArRownnz": efcArRownnz, "efcArRowadr": efcArRowadr, "efcArColind": efcArColind, "efcAr": efcAr, "efcVel": efcVel, "efcAref": efcAref, "efcB": efcB, "iefcAref": iefcAref, "iefcState": iefcState, "iefcForce": iefcForce, "efcState": efcState, "efcForce": efcForce, "ifrcConstraint": ifrcConstraint, "threadpool": threadpool, "signature": signature])
  }
}
