import C_mujoco

extension MjContact: MjObject {
  public typealias CType = mjContact_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._contact, body)
  }
}
extension MjData: MjObject {
  public typealias CType = mjData_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try body(value._data)
  }
}
extension MjLROpt: MjObject {
  public typealias CType = mjLROpt_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._lropt, body)
  }
}
extension MjModel: MjObject {
  public typealias CType = mjModel_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try body(value._model)
  }
}
extension MjOption: MjObject {
  public typealias CType = mjOption_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._option, body)
  }
}
extension MjSolverStat: MjObject {
  public typealias CType = mjSolverStat_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value, body)
  }
}
extension MjStatistic: MjObject {
  public typealias CType = mjStatistic_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value, body)
  }
}
extension MjTimerStat: MjObject {
  public typealias CType = mjTimerStat_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value, body)
  }
}
extension MjVisual: MjObject {
  public typealias CType = mjVisual_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._visual, body)
  }
}
extension MjWarningStat: MjObject {
  public typealias CType = mjWarningStat_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value, body)
  }
}
extension MjvCamera: MjObject {
  public typealias CType = mjvCamera_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._camera, body)
  }
}
extension MjvFigure: MjObject {
  public typealias CType = mjvFigure_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try body(value._figure)
  }
}
extension MjvGLCamera: MjObject {
  public typealias CType = mjvGLCamera_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._glcamera, body)
  }
}
extension MjvGeom: MjObject {
  public typealias CType = mjvGeom_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._geom, body)
  }
}
extension MjvLight: MjObject {
  public typealias CType = mjvLight_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value, body)
  }
}
extension MjvOption: MjObject {
  public typealias CType = mjvOption_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._option, body)
  }
}
extension MjvPerturb: MjObject {
  public typealias CType = mjvPerturb_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try withUnsafeMutablePointer(to: &value._perturb, body)
  }
}
extension MjvScene: MjObject {
  public typealias CType = mjvScene_
  public static func withCTypeUnsafeMutablePointer<R>(to value: inout Self, _ body: (UnsafeMutablePointer<CType>) throws -> R) rethrows -> R {
  try body(value._scene)
  }
}
