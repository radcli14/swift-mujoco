extension MjvScene {
  /// size of allocated geom buffer
  @inlinable
  public var maxgeom: Int32 {
    get { _scene.pointee.maxgeom }
    set { _scene.pointee.maxgeom = newValue }
  }
  /// number of geoms currently in buffer
  @inlinable
  public var ngeom: Int32 {
    get { _scene.pointee.ngeom }
    set { _scene.pointee.ngeom = newValue }
  }
  /// buffer for geoms (ngeom)
  @inlinable
  public var geoms: MjArray<MjvGeom> {
    get { MjArray<MjvGeom>(array: UnsafeMutableRawPointer(_scene.pointee.geoms).assumingMemoryBound(to: MjvGeom.self), object: _storage, len: ngeom) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjvGeom> = UnsafeMutableRawPointer(_scene.pointee.geoms).assumingMemoryBound(to: MjvGeom.self)
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom))
    }
  }
  /// buffer for ordering geoms by distance to camera (ngeom)
  @inlinable
  public var geomorder: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.geomorder, object: _storage, len: ngeom) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.geomorder
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(ngeom))
    }
  }
  /// number of flexes
  @inlinable
  public var nflex: Int32 {
    get { _scene.pointee.nflex }
    set { _scene.pointee.nflex = newValue }
  }
  /// address of flex edges (nflex)
  @inlinable
  public var flexedgeadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexedgeadr, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexedgeadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// number of edges in flex (nflex)
  @inlinable
  public var flexedgenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexedgenum, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexedgenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// address of flex vertices (nflex)
  @inlinable
  public var flexvertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexvertadr, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexvertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// number of vertices in flex (nflex)
  @inlinable
  public var flexvertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexvertnum, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexvertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// address of flex faces (nflex)
  @inlinable
  public var flexfaceadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexfaceadr, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexfaceadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// number of flex faces allocated (nflex)
  @inlinable
  public var flexfacenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexfacenum, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexfacenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// number of flex faces currently in use (nflex)
  @inlinable
  public var flexfaceused: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.flexfaceused, object: _storage, len: nflex) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.flexfaceused
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nflex))
    }
  }
  /// copy of mjVIS_FLEXVERT mjvOption flag
  @inlinable
  public var flexvertopt: UInt8 {
    get { _scene.pointee.flexvertopt }
    set { _scene.pointee.flexvertopt = newValue }
  }
  /// copy of mjVIS_FLEXEDGE mjvOption flag
  @inlinable
  public var flexedgeopt: UInt8 {
    get { _scene.pointee.flexedgeopt }
    set { _scene.pointee.flexedgeopt = newValue }
  }
  /// copy of mjVIS_FLEXFACE mjvOption flag
  @inlinable
  public var flexfaceopt: UInt8 {
    get { _scene.pointee.flexfaceopt }
    set { _scene.pointee.flexfaceopt = newValue }
  }
  /// copy of mjVIS_FLEXSKIN mjvOption flag
  @inlinable
  public var flexskinopt: UInt8 {
    get { _scene.pointee.flexskinopt }
    set { _scene.pointee.flexskinopt = newValue }
  }
  /// number of skins
  @inlinable
  public var nskin: Int32 {
    get { _scene.pointee.nskin }
    set { _scene.pointee.nskin = newValue }
  }
  /// number of faces in skin (nskin)
  @inlinable
  public var skinfacenum: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.skinfacenum, object: _storage, len: nskin) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.skinfacenum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin))
    }
  }
  /// address of skin vertices (nskin)
  @inlinable
  public var skinvertadr: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.skinvertadr, object: _storage, len: nskin) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.skinvertadr
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin))
    }
  }
  /// number of vertices in skin (nskin)
  @inlinable
  public var skinvertnum: MjArray<Int32> {
    get { MjArray<Int32>(array: _scene.pointee.skinvertnum, object: _storage, len: nskin) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<Int32> = _scene.pointee.skinvertnum
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nskin))
    }
  }
  /// number of lights currently in buffer
  @inlinable
  public var nlight: Int32 {
    get { _scene.pointee.nlight }
    set { _scene.pointee.nlight = newValue }
  }
  /// buffer for lights (nlight)
  @inlinable
  public var lights: MjArray<MjvLight> {
    get { MjArray<MjvLight>(array: withUnsafeMutablePointer(to: &_scene.pointee.lights, { UnsafeMutableRawPointer($0).assumingMemoryBound(to: MjvLight.self) }), object: _storage, len: nlight) }
    set {
      let unsafeMutablePointer: UnsafeMutablePointer<MjvLight> = withUnsafeMutablePointer(to: &_scene.pointee.lights, { UnsafeMutableRawPointer($0).assumingMemoryBound(to: MjvLight.self) })
      guard unsafeMutablePointer != newValue._array else { return }
      unsafeMutablePointer.assign(from: newValue._array, count: Int(nlight))
    }
  }
  /// left and right camera
  @inlinable
  public var camera: (MjvGLCamera, MjvGLCamera) {
    get { (MjvGLCamera(_scene.pointee.camera.0), MjvGLCamera(_scene.pointee.camera.1)) }
    set {
      _scene.pointee.camera.0 = newValue.0._glcamera
      _scene.pointee.camera.1 = newValue.1._glcamera
    }
  }
  /// enable model transformation
  @inlinable
  public var enabletransform: UInt8 {
    get { _scene.pointee.enabletransform }
    set { _scene.pointee.enabletransform = newValue }
  }
  /// model translation
  @inlinable
  public var translate: (Float, Float, Float) {
    get { _scene.pointee.translate }
    set { _scene.pointee.translate = newValue }
  }
  /// model quaternion rotation
  @inlinable
  public var rotate: (Float, Float, Float, Float) {
    get { _scene.pointee.rotate }
    set { _scene.pointee.rotate = newValue }
  }
  /// model scaling
  @inlinable
  public var scale: Float {
    get { _scene.pointee.scale }
    set { _scene.pointee.scale = newValue }
  }
  /// stereoscopic rendering (mjtStereo)
  @inlinable
  public var stereo: MjtStereo {
    get { MjtStereo(rawValue: _scene.pointee.stereo)! }
    set { _scene.pointee.stereo = newValue.rawValue }
  }
  /// rendering flags (indexed by mjtRndFlag)
  @inlinable
  public var flags: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8) {
    get { _scene.pointee.flags }
    set { _scene.pointee.flags = newValue }
  }
  /// frame pixel width; 0: disable framing
  @inlinable
  public var framewidth: Int32 {
    get { _scene.pointee.framewidth }
    set { _scene.pointee.framewidth = newValue }
  }
  /// frame color
  @inlinable
  public var framergb: (Float, Float, Float) {
    get { _scene.pointee.framergb }
    set { _scene.pointee.framergb = newValue }
  }
  /// 0: ok, 1: geoms exhausted, warning issued
  @inlinable
  public var status: Int32 {
    get { _scene.pointee.status }
    set { _scene.pointee.status = newValue }
  }
}
extension MjvScene: CustomReflectable {
  public var customMirror: Mirror {
    Mirror(self, children: ["maxgeom": maxgeom, "ngeom": ngeom, "geoms": geoms, "geomorder": geomorder, "nflex": nflex, "flexedgeadr": flexedgeadr, "flexedgenum": flexedgenum, "flexvertadr": flexvertadr, "flexvertnum": flexvertnum, "flexfaceadr": flexfaceadr, "flexfacenum": flexfacenum, "flexfaceused": flexfaceused, "flexvertopt": flexvertopt, "flexedgeopt": flexedgeopt, "flexfaceopt": flexfaceopt, "flexskinopt": flexskinopt, "nskin": nskin, "skinfacenum": skinfacenum, "skinvertadr": skinvertadr, "skinvertnum": skinvertnum, "nlight": nlight, "lights": lights, "camera": camera, "enabletransform": enabletransform, "translate": translate, "rotate": rotate, "scale": scale, "stereo": stereo, "flags": flags, "framewidth": framewidth, "framergb": framergb, "status": status])
  }
}
