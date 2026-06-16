import C_mujoco

///  Print matrix to screen.
@inlinable
public func print(mat: MjDoubleBufferPointer, nr: Int32, nc: Int32) {
  mat.withUnsafeBufferPointer { mat__p in
    mju_printMat(mat__p.baseAddress, nr, nc)
  }
}
///  Print sparse matrix to screen.
@inlinable
public func printMatSparse(mat: MjDoubleBufferPointer, nr: Int32, rownnz: MjInt32BufferPointer, rowadr: MjInt32BufferPointer, colind: MjInt32BufferPointer) {
  mat.withUnsafeBufferPointer { mat__p in
    rownnz.withUnsafeBufferPointer { rownnz__p in
      rowadr.withUnsafeBufferPointer { rowadr__p in
        colind.withUnsafeBufferPointer { colind__p in
          mju_printMatSparse(mat__p.baseAddress, nr, rownnz__p.baseAddress, rowadr__p.baseAddress, colind__p.baseAddress)
        }
      }
    }
  }
}
///  Load a dynamic library. The dynamic library is assumed to register one or more plugins.
@inlinable
public func loadPluginLibrary(path: String) {
  mj_loadPluginLibrary(path)
}
///  Return version number: 1.0.2 is encoded as 102.
@inlinable
public func version() -> Int32 {
  return mj_version()
}
///  Return the current version of MuJoCo as a null-terminated string.
@inlinable
public func versionString() -> String? {
  return String(cString: mj_versionString(), encoding: .utf8)
}
/// Intersect ray with pure geom; return nearest distance or -1 if no intersection. Nullable: normal
@inlinable
public func rayGeom<T0: MjDoubleMutableBufferPointer>(pos: MjDoubleBufferPointer, mat: MjDoubleBufferPointer, size: MjDoubleBufferPointer, pnt: MjDoubleBufferPointer, vec: MjDoubleBufferPointer, geomtype: Int32, normal: inout T0) -> Double {
  precondition(pos.count == 3)
  return pos.withUnsafeBufferPointer { pos__p in
    precondition(mat.count == 9)
    return mat.withUnsafeBufferPointer { mat__p in
      precondition(size.count == 3)
      return size.withUnsafeBufferPointer { size__p in
        precondition(pnt.count == 3)
        return pnt.withUnsafeBufferPointer { pnt__p in
          precondition(vec.count == 3)
          return vec.withUnsafeBufferPointer { vec__p in
            precondition(normal.count == 3)
            return normal.withUnsafeMutableBufferPointer { normal__p in
              return mju_rayGeom(pos__p.baseAddress, mat__p.baseAddress, size__p.baseAddress, pnt__p.baseAddress, vec__p.baseAddress, geomtype, normal__p.baseAddress)
            }
          }
        }
      }
    }
  }
}
/// Intersect ray with skin; return nearest distance or -1 if no intersection, and also output nearest vertex id. Nullable: vertid
@inlinable
public func raySkin<T0: MjInt32MutableBufferPointer>(nface: Int32, nvert: Int32, face: MjInt32BufferPointer, vert: MjFloatBufferPointer, pnt: MjDoubleBufferPointer, vec: MjDoubleBufferPointer, vertid: inout T0) -> Double {
  return face.withUnsafeBufferPointer { face__p in
    return vert.withUnsafeBufferPointer { vert__p in
      precondition(pnt.count == 3)
      return pnt.withUnsafeBufferPointer { pnt__p in
        precondition(vec.count == 3)
        return vec.withUnsafeBufferPointer { vec__p in
          precondition(vertid.count == 1)
          return vertid.withUnsafeMutableBufferPointer { vertid__p in
            return mju_raySkin(nface, nvert, face__p.baseAddress, vert__p.baseAddress, pnt__p.baseAddress, vec__p.baseAddress, vertid__p.baseAddress)
          }
        }
      }
    }
  }
}
///  Rotate 3D vec in horizontal plane by angle between (0,1) and (forward_x,forward_y).
@inlinable
public func alignToCamera<T0: MjDoubleMutableBufferPointer>(res: inout T0, vec: MjDoubleBufferPointer, forward: MjDoubleBufferPointer) {
  precondition(res.count == 3)
  res.withUnsafeMutableBufferPointer { res__p in
    precondition(vec.count == 3)
    vec.withUnsafeBufferPointer { vec__p in
      precondition(forward.count == 3)
      forward.withUnsafeBufferPointer { forward__p in
        mjv_alignToCamera(res__p.baseAddress, vec__p.baseAddress, forward__p.baseAddress)
      }
    }
  }
}
///  Deprecated: use mju_error.
@inlinable
public func error_i(msg: String, i: Int32) {
  mju_error_i(msg, i)
}
///  Deprecated: use mju_error.
@inlinable
public func error_s(msg: String, text: String) {
  mju_error_s(msg, text)
}
///  Deprecated: use mju_warning.
@inlinable
public func warning_i(msg: String, i: Int32) {
  mju_warning_i(msg, i)
}
///  Deprecated: use mju_warning.
@inlinable
public func warning_s(msg: String, text: String) {
  mju_warning_s(msg, text)
}
///  Clear user error and memory handlers.
@inlinable
public func clearHandlers() {
  mju_clearHandlers()
}
///  Write [datetime, type: message] to MUJOCO_LOG.TXT.
@inlinable
public func writeLog(type: String, msg: String) {
  mju_writeLog(type, msg)
}
///  Multiply 3-by-3 matrix by vector: res = mat * vec.
@inlinable
public func mulMatVec3<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, vec: MjDoubleBufferPointer) {
  precondition(res.count == 3)
  res.withUnsafeMutableBufferPointer { res__p in
    precondition(mat.count == 9)
    mat.withUnsafeBufferPointer { mat__p in
      precondition(vec.count == 3)
      vec.withUnsafeBufferPointer { vec__p in
        mju_mulMatVec3(res__p.baseAddress, mat__p.baseAddress, vec__p.baseAddress)
      }
    }
  }
}
///  Multiply transposed 3-by-3 matrix by vector: res = mat' * vec.
@inlinable
public func mulMatTVec3<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, vec: MjDoubleBufferPointer) {
  precondition(res.count == 3)
  res.withUnsafeMutableBufferPointer { res__p in
    precondition(mat.count == 9)
    mat.withUnsafeBufferPointer { mat__p in
      precondition(vec.count == 3)
      vec.withUnsafeBufferPointer { vec__p in
        mju_mulMatTVec3(res__p.baseAddress, mat__p.baseAddress, vec__p.baseAddress)
      }
    }
  }
}
///  Set res = val.
@inlinable
public func fill<T0: MjDoubleMutableBufferPointer>(res: inout T0, val: Double, n: Int32) {
  res.withUnsafeMutableBufferPointer { res__p in
    mju_fill(res__p.baseAddress, val, n)
  }
}
///  Multiply square matrix with vectors on both sides: return vec1' * mat * vec2.
@inlinable
public func mulVecMatVec(vec1: MjDoubleBufferPointer, mat: MjDoubleBufferPointer, vec2: MjDoubleBufferPointer, n: Int32) -> Double {
  return vec1.withUnsafeBufferPointer { vec1__p in
    return mat.withUnsafeBufferPointer { mat__p in
      return vec2.withUnsafeBufferPointer { vec2__p in
        return mju_mulVecMatVec(vec1__p.baseAddress, mat__p.baseAddress, vec2__p.baseAddress, n)
      }
    }
  }
}
///  Symmetrize square matrix res = (mat + mat')/2.
@inlinable
public func symmetrize<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, n: Int32) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      mju_symmetrize(res__p.baseAddress, mat__p.baseAddress, n)
    }
  }
}
///  Set mat to the identity matrix.
@inlinable
public func eye<T0: MjDoubleMutableBufferPointer>(mat: inout T0, n: Int32) {
  mat.withUnsafeMutableBufferPointer { mat__p in
    mju_eye(mat__p.baseAddress, n)
  }
}
/// Convert matrix from dense to sparse.  nnz is size of res and colind; return 1 if too small, 0 otherwise.
@inlinable
public func dense2sparse<T0: MjDoubleMutableBufferPointer, T1: MjInt32MutableBufferPointer, T2: MjInt32MutableBufferPointer, T3: MjInt32MutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, nr: Int32, nc: Int32, rownnz: inout T1, rowadr: inout T2, colind: inout T3, nnz: Int32) -> Int32 {
  return res.withUnsafeMutableBufferPointer { res__p in
    return mat.withUnsafeBufferPointer { mat__p in
      return rownnz.withUnsafeMutableBufferPointer { rownnz__p in
        return rowadr.withUnsafeMutableBufferPointer { rowadr__p in
          return colind.withUnsafeMutableBufferPointer { colind__p in
            return mju_dense2sparse(res__p.baseAddress, mat__p.baseAddress, nr, nc, rownnz__p.baseAddress, rowadr__p.baseAddress, colind__p.baseAddress, nnz)
          }
        }
      }
    }
  }
}
///  Convert matrix from sparse to dense.
@inlinable
public func sparse2dense<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, nr: Int32, nc: Int32, rownnz: MjInt32BufferPointer, rowadr: MjInt32BufferPointer, colind: MjInt32BufferPointer) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      rownnz.withUnsafeBufferPointer { rownnz__p in
        rowadr.withUnsafeBufferPointer { rowadr__p in
          colind.withUnsafeBufferPointer { colind__p in
            mju_sparse2dense(res__p.baseAddress, mat__p.baseAddress, nr, nc, rownnz__p.baseAddress, rowadr__p.baseAddress, colind__p.baseAddress)
          }
        }
      }
    }
  }
}
///  Convert lower-triangular symmetric CSR matrix to full dense matrix.
@inlinable
public func sym2dense<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, n: Int32, rownnz: MjInt32BufferPointer, rowadr: MjInt32BufferPointer, colind: MjInt32BufferPointer) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      rownnz.withUnsafeBufferPointer { rownnz__p in
        rowadr.withUnsafeBufferPointer { rowadr__p in
          colind.withUnsafeBufferPointer { colind__p in
            mju_sym2dense(res__p.baseAddress, mat__p.baseAddress, n, rownnz__p.baseAddress, rowadr__p.baseAddress, colind__p.baseAddress)
          }
        }
      }
    }
  }
}
/// Extract 3D rotation from an arbitrary 3x3 matrix by refining the input quaternion. Return the number of iterations required to converge.
@inlinable
public func mat2Rot<T0: MjDoubleMutableBufferPointer>(quat: inout T0, mat: MjDoubleBufferPointer) -> Int32 {
  precondition(quat.count == 4)
  return quat.withUnsafeMutableBufferPointer { quat__p in
    precondition(mat.count == 9)
    return mat.withUnsafeBufferPointer { mat__p in
      return mju_mat2Rot(quat__p.baseAddress, mat__p.baseAddress)
    }
  }
}
/// Convert sequence of Euler angles (radians) to quaternion. seq[0,1,2] must be in 'xyzXYZ', lower/upper-case mean intrinsic/extrinsic rotations.
@inlinable
public func euler2Quat<T0: MjDoubleMutableBufferPointer>(quat: inout T0, euler: MjDoubleBufferPointer, seq: String) {
  precondition(quat.count == 4)
  quat.withUnsafeMutableBufferPointer { quat__p in
    precondition(euler.count == 3)
    euler.withUnsafeBufferPointer { euler__p in
      mju_euler2Quat(quat__p.baseAddress, euler__p.baseAddress, seq)
    }
  }
}
/// Band-dense Cholesky decomposition.  Return minimum value in the factorized diagonal, or 0 if rank-deficient.  mat has (ntotal-ndense) x nband + ndense x ntotal elements.  The first (ntotal-ndense) x nband store the band part, left of diagonal, inclusive.  The second ndense x ntotal store the band part as entire dense rows.  Add diagadd+diagmul*mat_ii to diagonal before factorization.
@inlinable
public func cholFactorBand<T0: MjDoubleMutableBufferPointer>(mat: inout T0, ntotal: Int32, nband: Int32, ndense: Int32, diagadd: Double, diagmul: Double) -> Double {
  return mat.withUnsafeMutableBufferPointer { mat__p in
    return mju_cholFactorBand(mat__p.baseAddress, ntotal, nband, ndense, diagadd, diagmul)
  }
}
///  Solve (mat*mat')*res = vec where mat is a band-dense Cholesky factor.
@inlinable
public func cholSolveBand<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, vec: MjDoubleBufferPointer, ntotal: Int32, nband: Int32, ndense: Int32) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      vec.withUnsafeBufferPointer { vec__p in
        mju_cholSolveBand(res__p.baseAddress, mat__p.baseAddress, vec__p.baseAddress, ntotal, nband, ndense)
      }
    }
  }
}
///  Convert banded matrix to dense matrix, fill upper triangle if flg_sym>0.
@inlinable
public func band2Dense<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, ntotal: Int32, nband: Int32, ndense: Int32, flgSym: Bool) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      mju_band2Dense(res__p.baseAddress, mat__p.baseAddress, ntotal, nband, ndense, flgSym)
    }
  }
}
///  Convert dense matrix to banded matrix.
@inlinable
public func dense2Band<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, ntotal: Int32, nband: Int32, ndense: Int32) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      mju_dense2Band(res__p.baseAddress, mat__p.baseAddress, ntotal, nband, ndense)
    }
  }
}
///  Multiply band-diagonal matrix with nvec vectors, include upper triangle if flg_sym>0.
@inlinable
public func bandMulMatVec<T0: MjDoubleMutableBufferPointer>(res: inout T0, mat: MjDoubleBufferPointer, vec: MjDoubleBufferPointer, ntotal: Int32, nband: Int32, ndense: Int32, nvec: Int32, flgSym: Bool) {
  res.withUnsafeMutableBufferPointer { res__p in
    mat.withUnsafeBufferPointer { mat__p in
      vec.withUnsafeBufferPointer { vec__p in
        mju_bandMulMatVec(res__p.baseAddress, mat__p.baseAddress, vec__p.baseAddress, ntotal, nband, ndense, nvec, flgSym)
      }
    }
  }
}
///  Address of diagonal element i in band-dense matrix representation.
@inlinable
public func bandDiag(i: Int32, ntotal: Int32, nband: Int32, ndense: Int32) -> Int32 {
  return mju_bandDiag(i, ntotal, nband, ndense)
}
///  Convert type id (mjtObj) to type name.
@inlinable
public func type2Str(type: Int32) -> String? {
  return String(cString: mju_type2Str(type), encoding: .utf8)
}
///  Return human readable number of bytes using standard letter suffix.
@inlinable
public func writeNumBytes(nbytes: Int) -> String? {
  return String(cString: mju_writeNumBytes(nbytes), encoding: .utf8)
}
///  Construct a warning message given the warning type and info.
@inlinable
public func warningText(warning: Int32, info: Int) -> String? {
  return String(cString: mju_warningText(warning, info), encoding: .utf8)
}
/// Derivatives of mju_subQuat. Nullable: Da, Db
@inlinable
public func subQuat<T0: MjDoubleMutableBufferPointer, T1: MjDoubleMutableBufferPointer>(qa: MjDoubleBufferPointer, qb: MjDoubleBufferPointer, da: inout T0, db: inout T1) {
  precondition(qa.count == 4)
  qa.withUnsafeBufferPointer { qa__p in
    precondition(qb.count == 4)
    qb.withUnsafeBufferPointer { qb__p in
      precondition(da.count == 9)
      da.withUnsafeMutableBufferPointer { da__p in
        precondition(db.count == 9)
        db.withUnsafeMutableBufferPointer { db__p in
          mjd_subQuat(qa__p.baseAddress, qb__p.baseAddress, da__p.baseAddress, db__p.baseAddress)
        }
      }
    }
  }
}
/// Derivatives of mju_quatIntegrate. Nullable: Dquat, Dvel, Dscale
@inlinable
public func quatIntegrate<T0: MjDoubleMutableBufferPointer, T1: MjDoubleMutableBufferPointer, T2: MjDoubleMutableBufferPointer>(vel: MjDoubleBufferPointer, scale: Double, dquat: inout T0, dvel: inout T1, dscale: inout T2) {
  precondition(vel.count == 3)
  vel.withUnsafeBufferPointer { vel__p in
    precondition(dquat.count == 9)
    dquat.withUnsafeMutableBufferPointer { dquat__p in
      precondition(dvel.count == 9)
      dvel.withUnsafeMutableBufferPointer { dvel__p in
        precondition(dscale.count == 3)
        dscale.withUnsafeMutableBufferPointer { dscale__p in
          mjd_quatIntegrate(vel__p.baseAddress, scale, dquat__p.baseAddress, dvel__p.baseAddress, dscale__p.baseAddress)
        }
      }
    }
  }
}
///  Return the number of globally registered resource providers.
@inlinable
public func resourceProviderCount() -> Int32 {
  return mjp_resourceProviderCount()
}
