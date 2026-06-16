import C_mujoco

/// callbacks extending computation pipeline
public struct Mjcb {
  /// MjModel and MjData in the callback cannot be used outside of the callback.
  public static var passive: ((MjModel?, MjData?) -> Void)? = nil {
    didSet {
      guard passive != nil else {
        mjcb_passive = nil
        return
      }
      mjcb_passive = {
        guard let _model = $0, let _data = $1 else { return }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: _data)
        Mjcb.passive?(model, data)
      }
    }
  }
  /// MjModel and MjData in this callback cannot be used outside of the callback.
  public static var control: ((MjModel, MjData) -> Void)? = nil {
    didSet {
      guard control != nil else {
        mjcb_control = nil
        return
      }
      mjcb_control = {
        guard let _model = $0, let _data = $1 else { return }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: _data)
        Mjcb.control?(model, data)
      }
    }
  }
  /// contact filter: 1- discard, 0- collide
  ///
  /// MjModel and MjData in this callback cannot be used outside of the callback.
  public static var contactfilter: ((MjModel, MjData, Int32, Int32) -> Int32)? = nil {
    didSet {
      guard contactfilter != nil else {
        mjcb_contactfilter = nil
        return
      }
      mjcb_contactfilter = {
        guard let _model = $0, let _data = $1 else { return 0 }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: _data)
        return Mjcb.contactfilter?(model, data, $2, $3) ?? 0
      }
    }
  }
  /// sensor simulation
  ///
  /// MjModel and MjData in this callback cannot be used outside of the callback.
  public static var sensor: ((MjModel, MjData, Int32) -> Void)? = nil {
    didSet {
      guard sensor != nil else {
        mjcb_sensor = nil
        return
      }
      mjcb_sensor = {
        guard let _model = $0, let _data = $1 else { return }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: _data)
        Mjcb.sensor?(model, data, $2)
      }
    }
  }
  /// timer
  public static var time: (() -> Double)? = nil {
    didSet {
      guard time != nil else {
        mjcb_time = nil
        return
      }
      mjcb_time = {
        return Mjcb.time?() ?? 0
      }
    }
  }
  /// actuator dynamics
  ///
  /// MjModel and MjData in this callback cannot be used outside of the callback.
  public static var actDyn: ((MjModel, MjData, Int32) -> Double)? = nil {
    didSet {
      guard actDyn != nil else {
        mjcb_act_dyn = nil
        return
      }
      mjcb_act_dyn = {
        guard let _model = $0, let _data = $1 else { return 0 }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: UnsafeMutablePointer(mutating: _data))
        return Mjcb.actDyn?(model, data, $2) ?? 0
      }
    }
  }
  /// actuator gain
  ///
  /// MjModel and MjData in this callback cannot be used outside of the callback.
  public static var actGain: ((MjModel, MjData, Int32) -> Double)? = nil {
    didSet {
      guard actGain != nil else {
        mjcb_act_gain = nil
        return
      }
      mjcb_act_gain = {
        guard let _model = $0, let _data = $1 else { return 1 }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: UnsafeMutablePointer(mutating: _data))
        return Mjcb.actGain?(model, data, $2) ?? 1  // src/engine/engine_forward.c for why default to 1
      }
    }
  }
  /// actuator bias
  ///
  /// MjModel and MjData in this callback cannot be used outside of the callback.
  public static var actBias: ((MjModel, MjData, Int32) -> Double)? = nil {
    didSet {
      guard actBias != nil else {
        mjcb_act_bias = nil
        return
      }
      mjcb_act_bias = {
        guard let _model = $0, let _data = $1 else { return 0 }
        let model = MjModel(staticModel: UnsafeMutablePointer(mutating: _model))
        let data = MjData(model: UnsafeMutablePointer(mutating: _model), staticData: UnsafeMutablePointer(mutating: _data))
        return Mjcb.actBias?(model, data, $2) ?? 0
      }
    }
  }
}
