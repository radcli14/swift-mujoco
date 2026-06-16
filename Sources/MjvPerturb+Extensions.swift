extension MjvPerturb {
  /// selected body id; non-positive: none
  @inlinable
  public var select: Int32 {
    get { _perturb.select }
    set { _perturb.select = newValue }
  }
  /// selected flex id; negative: none
  @inlinable
  public var flexselect: Int32 {
    get { _perturb.flexselect }
    set { _perturb.flexselect = newValue }
  }
  /// selected skin id; negative: none
  @inlinable
  public var skinselect: Int32 {
    get { _perturb.skinselect }
    set { _perturb.skinselect = newValue }
  }
  /// perturbation bitmask (mjtPertBit)
  @inlinable
  public var active: MjtPertBit {
    get { MjtPertBit(rawValue: _perturb.active) }
    set { _perturb.active = newValue.rawValue }
  }
  /// secondary perturbation bitmask (mjtPertBit)
  @inlinable
  public var active2: MjtPertBit {
    get { MjtPertBit(rawValue: _perturb.active2) }
    set { _perturb.active2 = newValue.rawValue }
  }
  /// reference position for selected object
  @inlinable
  public var refpos: (Double, Double, Double) {
    get { _perturb.refpos }
    set { _perturb.refpos = newValue }
  }
  /// reference orientation for selected object
  @inlinable
  public var refquat: (Double, Double, Double, Double) {
    get { _perturb.refquat }
    set { _perturb.refquat = newValue }
  }
  /// reference position for selection point
  @inlinable
  public var refselpos: (Double, Double, Double) {
    get { _perturb.refselpos }
    set { _perturb.refselpos = newValue }
  }
  /// selection point in object coordinates
  @inlinable
  public var localpos: (Double, Double, Double) {
    get { _perturb.localpos }
    set { _perturb.localpos = newValue }
  }
  /// spatial inertia at selection point
  @inlinable
  public var localmass: Double {
    get { _perturb.localmass }
    set { _perturb.localmass = newValue }
  }
  /// relative mouse motion-to-space scaling (set by initPerturb)
  @inlinable
  public var scale: Double {
    get { _perturb.scale }
    set { _perturb.scale = newValue }
  }
}
extension MjvPerturb: CustomReflectable {
  public var customMirror: Mirror {
    Mirror(self, children: ["select": select, "flexselect": flexselect, "skinselect": skinselect, "active": active, "active2": active2, "refpos": refpos, "refquat": refquat, "refselpos": refselpos, "localpos": localpos, "localmass": localmass, "scale": scale])
  }
}
