import C_mujoco

extension MjvGeom {
  /// Initialize given geom fields when not NULL, set the rest to their default values. Nullable: size, pos, mat, rgba
  @inlinable
  public mutating func initGeom(type: Int32, size: MjDoubleBufferPointer, pos: MjDoubleBufferPointer, mat: MjDoubleBufferPointer, rgba: MjFloatBufferPointer) {
    precondition(size.count == 3)
    size.withUnsafeBufferPointer { size__p in
      precondition(pos.count == 3)
      pos.withUnsafeBufferPointer { pos__p in
        precondition(mat.count == 9)
        mat.withUnsafeBufferPointer { mat__p in
          precondition(rgba.count == 4)
          rgba.withUnsafeBufferPointer { rgba__p in
            mjv_initGeom(&self._geom, type, size__p.baseAddress, pos__p.baseAddress, mat__p.baseAddress, rgba__p.baseAddress)
          }
        }
      }
    }
  }
  /// Set (type, size, pos, mat) for connector-type geom between given points. Assume that mjv_initGeom was already called to set all other properties. Width of mjGEOM_LINE is denominated in pixels.
  @inlinable
  public mutating func connector(type: Int32, width: Double, from: MjDoubleBufferPointer, to: MjDoubleBufferPointer) {
    precondition(from.count == 3)
    from.withUnsafeBufferPointer { from__p in
      precondition(to.count == 3)
      to.withUnsafeBufferPointer { to__p in
        mjv_connector(&self._geom, type, width, from__p.baseAddress, to__p.baseAddress)
      }
    }
  }
}