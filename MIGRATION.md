# Migration notes — MuJoCo 2.3.0 → 3.9.0

This fork was upgraded from **MuJoCo 2.3.0** (`mjVERSION_HEADER 230`) to **MuJoCo 3.9.0**
(`mjVERSION_HEADER 3009000`) to make MuJoCo's runtime model-composition features available:
the `MjSpec` / `mjs_*` model-editing API and the MJCF `<attach model= prefix=>` + `<frame>`
elements (added in MuJoCo 3.2). These let a reusable robot sub-model be instanced multiple times
under a name **prefix + pose** — the MuJoCo analogue of SDF `<include><name><pose>`.

## What changed structurally

* The MuJoCo C/C++ source is now **vendored directly in this repository** under `CMujoco/`
  (`CMujoco/include`, `CMujoco/src`) with its third-party dependencies under
  `CMujoco/external/` (libccd, qhull, lodepng, tinyxml2, and the new header-only
  MarchingCubeCpp). The previous external SwiftPM dependency on `liuliu/mujoco` (which only ever
  packaged MuJoCo 2.3.x) has been **removed** — there is no upstream 3.x Apple/SwiftPM port to
  depend on.
* The build is **headless**: it compiles the physics engine, the MJCF/URDF model compiler, the
  `MjSpec`/`mjs_*` runtime model-editing API, the threadpool, and a no-op renderer
  (`render/noop`, which provides fast-fail stubs for the entire `mjr_*` API so it still links).
  The desktop OpenGL renderer (`render/classic`), the `ui` widget toolkit, and `simulate` are
  **not** compiled, so the library builds for iOS / iOS-Simulator / visionOS as well as macOS.
* `Package.swift`: `swift-tools-version` bumped to 5.9; platforms are now
  `macOS 10.15, iOS 13, visionOS 1` (dropped watchOS/tvOS); C++ standard raised to `.cxx20`
  (MuJoCo 3.x requires C++20). `mjUSEPLATFORMSIMD` is deliberately **not** defined (it would pull
  in x86 AVX intrinsics that don't exist on Apple arm64).

## Build / platform status

| Platform | Result |
|---|---|
| macOS arm64 | ✅ builds; all tests pass |
| iOS Simulator arm64 (+x86_64) | ✅ builds |
| iOS device arm64 | ✅ builds |
| visionOS (device + sim) | ⚠️ not locally verified — the visionOS *platform component* is not installed in the Xcode on the build machine (only the SDK headers are). The package declares `.visionOS(.v1)` and uses the identical platform-agnostic code that builds for iOS; install the visionOS platform in Xcode to confirm. |

## Preserved API (no source change required for ARMOR)

* `MjModel(fromXML: String)` (throwing) — and `MjModel(fromXML:assets:)` (assets still supported,
  now via the opaque 3.x `mjVFS` C API internally).
* `model.saveLastXML(filename:)`
* `model.makeData() -> MjData`
* `model.opt.gravity` (settable tuple), `model.opt.timestep` (settable)
* Stepping: `model.step(data:)`, `model.step1/step2`, `model.forward(data:)`
* Reading state: `data.qpos`, `data.qvel`, … (all `MjArray` accessors)
* Joint addressing: `model.name2id(type:name:)`, `model.jntQposadr`, etc.
* Model-summary / introspection helpers (`CustomReflectable` on the wrappers).

## API the consumer (ARMOR) must adapt to

1. **Rendering / UI bindings removed** (desktop-only): `MjrContext`, `MjrRect`, `MjUI`, all
   `Mjui*`, `GLContext`, `Simulate`, and the `simulate` executable product are gone. ARMOR
   renders via its own (RealityKit) pipeline, so this should not affect it. The abstract
   visualization layer (`MjvScene`, `MjvCamera`, `MjvOption`, `MjvGeom`, `MjvPerturb`,
   `MjvFigure`, …) is **kept** — `mjv_updateScene` etc. still work; only the GL drawing
   (`mjr_*`) and widget toolkit (`mjui_*`) are absent.
2. **`MjVFS` Swift wrapper removed** — `mjVFS` became an opaque handle (`struct { void* impl_; }`)
   in 3.x. The old field-based binding (`vfs.filedata`, `vfs.nfile`, …) no longer applies.
   In-memory asset loading is still available through `MjModel(fromXML:assets:)`.
3. **`MjModel.init(fromBinaryPath:)` / `init(fromXMLPath:)` lost their `vfs:` parameter.**
   Callers using the default (`nil`) are unaffected.
4. **Model dimension fields stay `Int32`.** In MuJoCo 3.x `nq`, `nv`, `nbody`, … are 64-bit
   (`mjtSize`/`int64`) in C; the bindings surface them as `Int32` (cast) to preserve the 2.x API.
   `mjtSize` **arrays** (e.g. `model.texAdr`) are surfaced as `MjArray<Int64>` to match storage.
5. **Removed model fields:** `nconmax` / `njmax` no longer exist (3.x uses a dynamic arena).
   Remove any references.
6. **Functions intentionally not wrapped** (call via `import C_mujoco` if needed):
   `mjd_inverseFD`, `mj_readSensor`, the raw `mj_stackAllocNum/Int/Byte`, `mjv_copyData`,
   the variadic `mju_error` / `mju_warning`, any `void*`-buffer load/save, and the entire
   `MjSpec` / `mjs_*` model-editing API. The `mjtState` enum is also not generated.

## New capability: runtime model composition (`MjSpec` / `mjs_attach`)

The `mjs_*` model-editing + attachment API is available by importing the C module directly
(`import C_mujoco`). Minimal example — instancing the same sub-model twice under a prefix
(see `Tests/attach.swift` for the full, asserted version):

```swift
import C_mujoco

let parent = mj_makeSpec()
var children: [UnsafeMutablePointer<mjSpec>] = []  // keep alive: mjs_attach is by-reference
defer { children.forEach { mj_deleteSpec($0) }; mj_deleteSpec(parent) }

for prefix in ["robot1_", "robot2_"] {
  let child = mj_parseXMLString(childXML, nil, err, 1024)!   // reusable sub-model
  children.append(child)
  let childWorld = mjs_findBody(child, "world")!
  let frame = mjs_addFrame(mjs_findBody(parent, "world")!, nil)!  // set frame.pos/quat to pose it
  mjs_attach(frame.pointee.element, childWorld.pointee.element, prefix, "")  // prefix namespacing
}

let m = mj_compile(parent, nil)!            // -> mjModel*
mj_name2id(m, Int32(mjOBJ_BODY.rawValue), "robot1_link")  // >= 0: namespaced body exists
```

Equivalent pure-MJCF works too, using `<frame pos quat>` + `<attach model= prefix=>` once the
child spec has been registered in the parent.

## Known limitations / not-yet-ported (the supported subset)

* **First-party plugins are not compiled** (elasticity, actuator, sensor, sdf). Models that rely
  on these plugins will not find them.
* **Mesh-file decoders (OBJ/STL) are not compiled.** In MuJoCo 3.x, mesh loading moved to the
  `obj_decoder` / `stl_decoder` plugins (which self-register via static constructors — fragile
  inside a SwiftPM static archive). Models with **inline** geoms work; models that reference
  external `.obj` / `.stl` mesh files will fail to load until these decoders are enabled. This is
  the most likely follow-up needed for ARMOR; it was left out rather than silently stubbed.
* `src/xml/mjz` (compressed-model format) and its `miniz` dependency are not vendored.
* Rendering, UI, and the desktop `simulate` app are not part of this headless build.
