import C_mujoco
import Foundation

/// One child model to place into a composed scene.
///
/// `xml` is the child as MJCF or URDF; `prefix` namespaces everything the child contributes
/// (bodies, joints, geoms, …); `pos` / `quat` are the pose of the `<frame>` the child is attached
/// under. The child's base type is taken as-is: a URDF root link with no joint stays welded to its
/// frame (static base), while a root carrying a floating joint becomes a free/floating base — the
/// caller decides which by what it passes in.
public struct MjSceneInstance {
  /// Child model, as a URDF or MJCF XML string.
  public var xml: String
  /// Name namespace applied to the child, e.g. `"robot1_"`.
  public var prefix: String
  /// Frame position.
  public var pos: (Double, Double, Double)
  /// Frame orientation as a quaternion, `w x y z`.
  public var quat: (Double, Double, Double, Double)

  public init(
    xml: String, prefix: String,
    pos: (Double, Double, Double),
    quat: (Double, Double, Double, Double)
  ) {
    self.xml = xml
    self.prefix = prefix
    self.pos = pos
    self.quat = quat
  }
}

/// Composes several child models into one, namespaced by prefix and posed by a frame, using the
/// MuJoCo 3.x `MjSpec` / `mjs_*` attachment API. The unsafe pointer work is fully encapsulated here.
public enum MjSceneComposer {
  /// Compose `instances` into a single model and return the combined model as an MJCF string.
  ///
  /// Each instance is parsed into its own `mjSpec`, then `mjs_attach`-ed into a shared parent under
  /// a posed `<frame>` carrying the instance's `prefix`. The combined spec is serialized back to
  /// MJCF with `mj_saveXMLString`.
  ///
  /// MuJoCo can only serialize a *compiled* spec, so the combined spec is compiled here with a
  /// `nil` VFS before being written; the returned string is still plain MJCF that the caller
  /// re-loads later (e.g. via `MjModel(fromXML:assets:)`) with its own asset directory. Because the
  /// compile uses a `nil` VFS, any external mesh files a child references must be resolvable on
  /// disk at this point (or the children must be mesh-free skeletons); the body/joint structure and
  /// prefix namespacing do not require assets.
  ///
  /// - Throws: `MjError.xml` (carrying the underlying MuJoCo error text) on any parse, attach,
  ///   compile, or serialization failure.
  public static func composeMJCF(_ instances: [MjSceneInstance]) throws -> String {
    let errSize = 1024
    let err = UnsafeMutablePointer<CChar>.allocate(capacity: errSize)
    defer { err.deallocate() }
    func errorText() -> String { String(cString: err) }

    guard let parent = mj_makeSpec() else {
      throw MjError.xml("mj_makeSpec failed")
    }
    // mjs_attach is by reference: each child spec must stay alive until serialization completes.
    // Deletion order is children then parent (parent references the children).
    var children: [UnsafeMutablePointer<mjSpec>] = []
    defer {
      for child in children { mj_deleteSpec(child) }
      mj_deleteSpec(parent)
    }

    for instance in instances {
      err[0] = 0
      guard
        let child = instance.xml.withCString({
          mj_parseXMLString($0, nil, err, Int32(errSize))
        })
      else {
        throw MjError.xml("failed to parse child '\(instance.prefix)': \(errorText())")
      }
      children.append(child)

      guard let childWorld = mjs_findBody(child, "world") else {
        throw MjError.xml("child '\(instance.prefix)' has no worldbody")
      }
      guard let parentWorld = mjs_findBody(parent, "world") else {
        throw MjError.xml("parent spec has no worldbody")
      }
      guard let frame = mjs_addFrame(parentWorld, nil) else {
        throw MjError.xml("mjs_addFrame failed for '\(instance.prefix)'")
      }
      frame.pointee.pos = instance.pos
      frame.pointee.quat = instance.quat

      guard
        mjs_attach(frame.pointee.element, childWorld.pointee.element, instance.prefix, "") != nil
      else {
        throw MjError.xml(
          "mjs_attach failed for '\(instance.prefix)': \(String(cString: mjs_getError(parent)))")
      }
    }

    // MuJoCo only serializes a compiled spec, so compile the combined spec (nil VFS) first.
    guard let model = mj_compile(parent, nil) else {
      throw MjError.xml("mj_compile of composed scene failed: \(String(cString: mjs_getError(parent)))")
    }
    mj_deleteModel(model)

    // Serialize the combined spec to MJCF, growing the buffer if it reports truncation.
    var bufSize = 1 << 16
    while true {
      let buf = UnsafeMutablePointer<CChar>.allocate(capacity: bufSize)
      defer { buf.deallocate() }
      err[0] = 0
      let rc = mj_saveXMLString(parent, buf, Int32(bufSize), err, Int32(errSize))
      if rc == 0 {
        return String(cString: buf)
      } else if rc > 0 {
        // Buffer too small; `rc` is the required length (excluding the null terminator). Retry.
        bufSize = Int(rc) + 1
      } else {
        throw MjError.xml("mj_saveXMLString failed: \(errorText())")
      }
    }
  }
}
