// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// (5.9 is required for the .visionOS platform and the .cxx20 C++ standard.)

import PackageDescription

// MuJoCo 3.9.0 is vendored directly in this repository under CMujoco/ (CMujoco/include +
// CMujoco/src), with its third-party C/C++ dependencies under CMujoco/external/. This replaces
// the previous external "C_mujoco" SwiftPM dependency (liuliu/mujoco), which only ever packaged
// MuJoCo 2.3.x for Apple platforms. See README / MIGRATION.md for details.
var dependencies: [Package.Dependency] = [
  .package(url: "https://github.com/apple/swift-numerics", from: "1.0.0"),
]

#if swift(>=5.6)
  dependencies.append(.package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"))
#endif

let package = Package(
  name: "MuJoCo",
  // std::filesystem (used by MuJoCo 3.x resource loading) requires macOS 10.15 / iOS 13.
  platforms: [.macOS(.v10_15), .iOS(.v13), .visionOS(.v1)],
  products: [
    .library(name: "MuJoCo", type: .static, targets: ["MuJoCo"]),
    .executable(name: "codegen", targets: ["codegen"]),
  ],
  dependencies: dependencies,
  targets: [
    // ---- Vendored MuJoCo 3.9.0 third-party C/C++ dependencies ----
    .target(
      name: "ccd",
      path: "CMujoco/external/libccd/src",
      publicHeadersPath: "include"),
    .target(
      name: "qhull",
      path: "CMujoco/external/qhull/src/libqhull_r",
      publicHeadersPath: "."),
    .target(
      name: "lodepng",
      path: "CMujoco/external/lodepng",
      sources: ["lodepng.cpp"],
      publicHeadersPath: "include"),
    .target(
      name: "tinyxml2",
      path: "CMujoco/external/tinyxml2",
      sources: ["tinyxml2.cpp"],
      publicHeadersPath: "include"),
    // tinyobjloader (tiny_obj_loader.h) and MarchingCubeCpp (MC.h) are header-only and are
    // pulled in via header search paths on C_mujoco, so they need no targets of their own.

    // ---- Vendored MuJoCo 3.9.0 core C/C++ library (headless: engine + model compiler +
    // MjSpec/mjs_* + threadpool + no-op renderer; OpenGL render/classic, the ui toolkit and
    // simulate are NOT vendored so the library builds for iOS / visionOS). ----
    .target(
      name: "C_mujoco",
      dependencies: ["ccd", "qhull", "lodepng", "tinyxml2"],
      path: "CMujoco",
      exclude: [
        "LICENSE",
        "external",
        "src/xml/mjz",  // compressed-model format; sole consumer of miniz, which is not vendored
      ],
      sources: [
        "src/engine",
        "src/user",
        "src/xml",
        "src/thread",
        "src/render",  // render/noop only
      ],
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("src"),
        .headerSearchPath("external/tinyobjloader/include"),
        .headerSearchPath("external/marchingcubes"),
        .define("_GNU_SOURCE"),
        .define("CCD_STATIC_DEFINE"),
        .define("MUJOCO_DLL_EXPORTS"),
        .define("MC_IMPLEM_ENABLE"),
        // NOTE: mjUSEPLATFORMSIMD is deliberately NOT defined: it pulls in x86 AVX
        // intrinsics that do not exist on Apple arm64.
      ],
      cxxSettings: [.unsafeFlags(["-Wno-module-import-in-extern-c", "-fno-modules"])]),

    // GLFW is disabled in radcli14's fork - not needed for core MuJoCo physics simulation
    // Only required if you want GLContext or Simulate UI features
    // .systemLibrary(
    //   name: "C_glfw",
    //   pkgConfig: "glfw3",
    //   providers: [.brew(["glfw"]), .apt(["libglfw3-dev"])]
    // ),
    .target(
      name: "CShim_mujoco",
      dependencies: ["C_mujoco"],
      path: "Sources/CShim",
      sources: [
        "CShim.c"
      ],
      publicHeadersPath: "."),
    .target(
      name: "MuJoCo",
      dependencies: [
        "CShim_mujoco", "C_mujoco",
        // GLFW dependency removed  in radcli14's fork - not needed for physics simulation
        // .target(name: "C_glfw", condition: .when(platforms: [.macOS, .linux])),
      ],
      path: "Sources",
      // The desktop OpenGL renderer (mjr_*), the `ui` widget toolkit (mjui_*), GLContext and the
      // Simulate UI are not part of the headless build, so their Swift bindings are excluded.
      // (These files are still produced by codegen; they are simply not compiled here.)
      exclude: [
        "CShim", "C_glfw", "codegen", "BUILD.bazel",
        "GLContext.swift", "Simulate.swift",
        "MjrContext.swift", "MjrContext+Extensions.swift", "MjrContext+Functions.swift",
        "MjrRect.swift",
        "MjUI.swift", "MjUI+Extensions.swift", "MjUI+Functions.swift",
        "MjuiDef.swift", "MjuiDef+Extensions.swift", "MjuiDefObjectMapper.swift",
        "MjuiDefState.swift",
        "MjuiItem.swift", "MjuiItem+Extensions.swift",
        "MjuiItemEdit.swift", "MjuiItemEdit+Extensions.swift",
        "MjuiItemMulti.swift", "MjuiItemMulti+Extensions.swift",
        "MjuiItemSingle.swift", "MjuiItemSingle+Extensions.swift",
        "MjuiItemSlider.swift", "MjuiItemSlider+Extensions.swift",
        "MjuiSection.swift", "MjuiSection+Extensions.swift",
        "MjuiState.swift", "MjuiState+Extensions.swift", "MjuiState+Functions.swift",
        "MjuiThemeColor.swift", "MjuiThemeColor+Extensions.swift",
        "MjuiThemeSpacing.swift", "MjuiThemeSpacing+Extensions.swift",
        // mjVFS became an opaque handle in MuJoCo 3.x; the old field-based VFS binding no longer
        // applies, so it is excluded (see MIGRATION.md).
        "MjVFS.swift", "MjVFS+Extensions.swift", "MjVFS+Functions.swift",
      ]),
    .target(
      name: "ChangeCases",
      path: "Sources/codegen",
      exclude: [
        "main.swift", "enumDecl.swift", "functionExtension.swift", "parseHeaders.swift",
        "structExtension.swift",
      ],
      sources: [
        "changeCases.swift"
      ]),
    .target(
      name: "MuJoCoCSyntax",
      dependencies: ["ChangeCases"],
      path: "Sources/codegen",
      exclude: ["changeCases.swift", "main.swift"],
      sources: [
        "enumDecl.swift",
        "functionExtension.swift",
        "parseHeaders.swift",
        "structExtension.swift",
      ]),
    .executableTarget(
      name: "codegen",
      dependencies: ["MuJoCoCSyntax"],
      path: "Sources/codegen",
      exclude: [
        "changeCases.swift", "enumDecl.swift", "functionExtension.swift", "parseHeaders.swift",
        "structExtension.swift",
      ],
      sources: [
        "main.swift"
      ]),
    .testTarget(
      name: "Tests",
      dependencies: ["MuJoCo"],
      path: "Tests",
      exclude: ["main.swift", "BUILD.bazel"]),
  ],
  cxxLanguageStandard: .cxx20
)
