import C_mujoco

extension MjvCamera {
  ///  Set default free camera.
  @inlinable
  public mutating func defaultFreeCamera(model: MjModel) {
    mjv_defaultFreeCamera(model._model, &self._camera)
  }
  ///  Move camera with mouse; action is mjtMouse.
  @inlinable
  public mutating func moveCamera(model: MjModel, action: MjtMouse, reldx: Double, reldy: Double, scene: MjvScene) {
    mjv_moveCamera(model._model, action.rawValue, reldx, reldy, scene._scene, &self._camera)
  }
  /// Compute camera position and forward, up, and right vectors. Nullable: headpos, forward, up, right
  @inlinable
  public func cameraFrame<T0: MjDoubleMutableBufferPointer, T1: MjDoubleMutableBufferPointer, T2: MjDoubleMutableBufferPointer, T3: MjDoubleMutableBufferPointer>(headpos: inout T0, forward: inout T1, up: inout T2, right: inout T3, data: MjData) {
    precondition(headpos.count == 3)
    headpos.withUnsafeMutableBufferPointer { headpos__p in
      precondition(forward.count == 3)
      forward.withUnsafeMutableBufferPointer { forward__p in
        precondition(up.count == 3)
        up.withUnsafeMutableBufferPointer { up__p in
          precondition(right.count == 3)
          right.withUnsafeMutableBufferPointer { right__p in
    var __camera = self._camera
            mjv_cameraFrame(headpos__p.baseAddress, forward__p.baseAddress, up__p.baseAddress, right__p.baseAddress, data._data, &__camera)
          }
        }
      }
    }
  }
  /// Compute camera frustum: vertical, horizontal, and clip planes. Nullable: zver, zhor, zclip
  @inlinable
  public func cameraFrustum<T0: MjFloatMutableBufferPointer, T1: MjFloatMutableBufferPointer, T2: MjFloatMutableBufferPointer>(zver: inout T0, zhor: inout T1, zclip: inout T2, model: MjModel) {
    precondition(zver.count == 2)
    zver.withUnsafeMutableBufferPointer { zver__p in
      precondition(zhor.count == 2)
      zhor.withUnsafeMutableBufferPointer { zhor__p in
        precondition(zclip.count == 2)
        zclip.withUnsafeMutableBufferPointer { zclip__p in
    var __camera = self._camera
          mjv_cameraFrustum(zver__p.baseAddress, zhor__p.baseAddress, zclip__p.baseAddress, model._model, &__camera)
        }
      }
    }
  }
}