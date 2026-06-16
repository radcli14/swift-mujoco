extension MjOption {
  /// timestep
  @inlinable
  public var timestep: Double {
    get { _option.timestep }
    set { _option.timestep = newValue }
  }
  /// ratio of friction-to-normal contact impedance
  @inlinable
  public var impratio: Double {
    get { _option.impratio }
    set { _option.impratio = newValue }
  }
  /// main solver tolerance
  @inlinable
  public var tolerance: Double {
    get { _option.tolerance }
    set { _option.tolerance = newValue }
  }
  /// CG/Newton linesearch tolerance
  @inlinable
  public var lsTolerance: Double {
    get { _option.ls_tolerance }
    set { _option.ls_tolerance = newValue }
  }
  /// noslip solver tolerance
  @inlinable
  public var noslipTolerance: Double {
    get { _option.noslip_tolerance }
    set { _option.noslip_tolerance = newValue }
  }
  /// convex collision solver tolerance
  @inlinable
  public var ccdTolerance: Double {
    get { _option.ccd_tolerance }
    set { _option.ccd_tolerance = newValue }
  }
  /// sleep velocity tolerance
  @inlinable
  public var sleepTolerance: Double {
    get { _option.sleep_tolerance }
    set { _option.sleep_tolerance = newValue }
  }
  /// gravitational acceleration
  @inlinable
  public var gravity: (Double, Double, Double) {
    get { _option.gravity }
    set { _option.gravity = newValue }
  }
  /// wind (for lift, drag and viscosity)
  @inlinable
  public var wind: (Double, Double, Double) {
    get { _option.wind }
    set { _option.wind = newValue }
  }
  /// global magnetic flux
  @inlinable
  public var magnetic: (Double, Double, Double) {
    get { _option.magnetic }
    set { _option.magnetic = newValue }
  }
  /// density of medium
  @inlinable
  public var density: Double {
    get { _option.density }
    set { _option.density = newValue }
  }
  /// viscosity of medium
  @inlinable
  public var viscosity: Double {
    get { _option.viscosity }
    set { _option.viscosity = newValue }
  }
  /// margin
  @inlinable
  public var oMargin: Double {
    get { _option.o_margin }
    set { _option.o_margin = newValue }
  }
  /// solref
  @inlinable
  public var oSolref: (Double, Double) {
    get { _option.o_solref }
    set { _option.o_solref = newValue }
  }
  /// solimp
  @inlinable
  public var oSolimp: (Double, Double, Double, Double, Double) {
    get { _option.o_solimp }
    set { _option.o_solimp = newValue }
  }
  /// friction
  @inlinable
  public var oFriction: (Double, Double, Double, Double, Double) {
    get { _option.o_friction }
    set { _option.o_friction = newValue }
  }
  /// integration mode (mjtIntegrator)
  @inlinable
  public var integrator: MjtIntegrator {
    get { MjtIntegrator(rawValue: _option.integrator)! }
    set { _option.integrator = newValue.rawValue }
  }
  /// type of friction cone (mjtCone)
  @inlinable
  public var cone: MjtCone {
    get { MjtCone(rawValue: _option.cone)! }
    set { _option.cone = newValue.rawValue }
  }
  /// type of Jacobian (mjtJacobian)
  @inlinable
  public var jacobian: MjtJacobian {
    get { MjtJacobian(rawValue: _option.jacobian)! }
    set { _option.jacobian = newValue.rawValue }
  }
  /// solver algorithm (mjtSolver)
  @inlinable
  public var solver: MjtSolver {
    get { MjtSolver(rawValue: _option.solver)! }
    set { _option.solver = newValue.rawValue }
  }
  /// maximum number of main solver iterations
  @inlinable
  public var iterations: Int32 {
    get { _option.iterations }
    set { _option.iterations = newValue }
  }
  /// maximum number of CG/Newton linesearch iterations
  @inlinable
  public var lsIterations: Int32 {
    get { _option.ls_iterations }
    set { _option.ls_iterations = newValue }
  }
  /// maximum number of noslip solver iterations
  @inlinable
  public var noslipIterations: Int32 {
    get { _option.noslip_iterations }
    set { _option.noslip_iterations = newValue }
  }
  /// maximum number of convex collision solver iterations
  @inlinable
  public var ccdIterations: Int32 {
    get { _option.ccd_iterations }
    set { _option.ccd_iterations = newValue }
  }
  /// bit flags for disabling standard features
  @inlinable
  public var disableflags: Int32 {
    get { _option.disableflags }
    set { _option.disableflags = newValue }
  }
  /// bit flags for enabling optional features
  @inlinable
  public var enableflags: Int32 {
    get { _option.enableflags }
    set { _option.enableflags = newValue }
  }
  /// bit flags for disabling actuators by group id
  @inlinable
  public var disableactuator: Int32 {
    get { _option.disableactuator }
    set { _option.disableactuator = newValue }
  }
  /// number of starting points for gradient descent
  @inlinable
  public var sdfInitpoints: Int32 {
    get { _option.sdf_initpoints }
    set { _option.sdf_initpoints = newValue }
  }
  /// max number of iterations for gradient descent
  @inlinable
  public var sdfIterations: Int32 {
    get { _option.sdf_iterations }
    set { _option.sdf_iterations = newValue }
  }
}
extension MjOption: CustomReflectable {
  public var customMirror: Mirror {
    Mirror(self, children: ["timestep": timestep, "impratio": impratio, "tolerance": tolerance, "lsTolerance": lsTolerance, "noslipTolerance": noslipTolerance, "ccdTolerance": ccdTolerance, "sleepTolerance": sleepTolerance, "gravity": gravity, "wind": wind, "magnetic": magnetic, "density": density, "viscosity": viscosity, "oMargin": oMargin, "oSolref": oSolref, "oSolimp": oSolimp, "oFriction": oFriction, "integrator": integrator, "cone": cone, "jacobian": jacobian, "solver": solver, "iterations": iterations, "lsIterations": lsIterations, "noslipIterations": noslipIterations, "ccdIterations": ccdIterations, "disableflags": disableflags, "enableflags": enableflags, "disableactuator": disableactuator, "sdfInitpoints": sdfInitpoints, "sdfIterations": sdfIterations])
  }
}
