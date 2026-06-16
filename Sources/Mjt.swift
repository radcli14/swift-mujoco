/// disable default feature bitflags
public struct MjtDisableBit: OptionSet, CustomStringConvertible, CaseIterable {
  public let rawValue: Int32
  public init(rawValue: Int32) {
    self.rawValue = rawValue
  }
  public static let constraint = MjtDisableBit(rawValue: 1<<0)
  public static let equality = MjtDisableBit(rawValue: 1<<1)
  public static let frictionloss = MjtDisableBit(rawValue: 1<<2)
  public static let limit = MjtDisableBit(rawValue: 1<<3)
  public static let contact = MjtDisableBit(rawValue: 1<<4)
  public static let spring = MjtDisableBit(rawValue: 1<<5)
  public static let damper = MjtDisableBit(rawValue: 1<<6)
  public static let gravity = MjtDisableBit(rawValue: 1<<7)
  public static let clampctrl = MjtDisableBit(rawValue: 1<<8)
  public static let warmstart = MjtDisableBit(rawValue: 1<<9)
  public static let filterparent = MjtDisableBit(rawValue: 1<<10)
  public static let actuation = MjtDisableBit(rawValue: 1<<11)
  public static let refsafe = MjtDisableBit(rawValue: 1<<12)
  public static let sensor = MjtDisableBit(rawValue: 1<<13)
  public static let midphase = MjtDisableBit(rawValue: 1<<14)
  public static let eulerdamp = MjtDisableBit(rawValue: 1<<15)
  public static let autoreset = MjtDisableBit(rawValue: 1<<16)
  public static let nativeccd = MjtDisableBit(rawValue: 1<<17)
  public static let island = MjtDisableBit(rawValue: 1<<18)
  public static let multiccd = MjtDisableBit(rawValue: 1<<19)
  public static let allCases: [MjtDisableBit] = [.constraint, .equality, .frictionloss, .limit, .contact, .spring, .damper, .gravity, .clampctrl, .warmstart, .filterparent, .actuation, .refsafe, .sensor, .midphase, .eulerdamp, .autoreset, .nativeccd, .island, .multiccd]
  public var description: String {
    switch self {
    case .constraint:
      return "constraint"
    case .equality:
      return "equality"
    case .frictionloss:
      return "frictionloss"
    case .limit:
      return "limit"
    case .contact:
      return "contact"
    case .spring:
      return "spring"
    case .damper:
      return "damper"
    case .gravity:
      return "gravity"
    case .clampctrl:
      return "clampctrl"
    case .warmstart:
      return "warmstart"
    case .filterparent:
      return "filterparent"
    case .actuation:
      return "actuation"
    case .refsafe:
      return "refsafe"
    case .sensor:
      return "sensor"
    case .midphase:
      return "midphase"
    case .eulerdamp:
      return "eulerdamp"
    case .autoreset:
      return "autoreset"
    case .nativeccd:
      return "nativeccd"
    case .island:
      return "island"
    case .multiccd:
      return "multiccd"
    default:
      return "MjtDisableBit(rawValue: \(rawValue))"
    }
  }
}
/// enable optional feature bitflags
public struct MjtEnableBit: OptionSet, CustomStringConvertible, CaseIterable {
  public let rawValue: Int32
  public init(rawValue: Int32) {
    self.rawValue = rawValue
  }
  public static let override = MjtEnableBit(rawValue: 1<<0)
  public static let energy = MjtEnableBit(rawValue: 1<<1)
  public static let fwdinv = MjtEnableBit(rawValue: 1<<2)
  public static let invdiscrete = MjtEnableBit(rawValue: 1<<3)
  public static let sleep = MjtEnableBit(rawValue: 1<<4)
  public static let diagexact = MjtEnableBit(rawValue: 1<<5)
  public static let allCases: [MjtEnableBit] = [.override, .energy, .fwdinv, .invdiscrete, .sleep, .diagexact]
  public var description: String {
    switch self {
    case .override:
      return "override"
    case .energy:
      return "energy"
    case .fwdinv:
      return "fwdinv"
    case .invdiscrete:
      return "invdiscrete"
    case .sleep:
      return "sleep"
    case .diagexact:
      return "diagexact"
    default:
      return "MjtEnableBit(rawValue: \(rawValue))"
    }
  }
}
/// type of degree of freedom
@objc
public enum MjtJoint: Int32, CustomStringConvertible {
  case free = 0
  case ball
  case slide
  case hinge
  public var description: String {
    switch self {
    case .free:
      return "free"
    case .ball:
      return "ball"
    case .slide:
      return "slide"
    case .hinge:
      return "hinge"
    }
  }
}
/// type of geometric shape
@objc
public enum MjtGeom: Int32, CustomStringConvertible, CaseIterable {
  case plane = 0
  case hfield
  case sphere
  case capsule
  case ellipsoid
  case cylinder
  case box
  case mesh
  case sdf
  case arrow = 100
  case arrow1
  case arrow2
  case line
  case linebox
  case flex
  case skin
  case label
  case triangle
  case none = 1001
  public var description: String {
    switch self {
    case .plane:
      return "plane"
    case .hfield:
      return "hfield"
    case .sphere:
      return "sphere"
    case .capsule:
      return "capsule"
    case .ellipsoid:
      return "ellipsoid"
    case .cylinder:
      return "cylinder"
    case .box:
      return "box"
    case .mesh:
      return "mesh"
    case .sdf:
      return "sdf"
    case .arrow:
      return "arrow"
    case .arrow1:
      return "arrow1"
    case .arrow2:
      return "arrow2"
    case .line:
      return "line"
    case .linebox:
      return "linebox"
    case .flex:
      return "flex"
    case .skin:
      return "skin"
    case .label:
      return "label"
    case .triangle:
      return "triangle"
    case .none:
      return "none"
    }
  }
}
/// type of camera projection
@objc
public enum MjtProjection: Int32, CustomStringConvertible {
  case perspective = 0
  case orthographic
  public var description: String {
    switch self {
    case .perspective:
      return "perspective"
    case .orthographic:
      return "orthographic"
    }
  }
}
/// tracking mode for camera and light
@objc
public enum MjtCamLight: Int32, CustomStringConvertible {
  case fixed = 0
  case track
  case trackcom
  case targetbody
  case targetbodycom
  public var description: String {
    switch self {
    case .fixed:
      return "fixed"
    case .track:
      return "track"
    case .trackcom:
      return "trackcom"
    case .targetbody:
      return "targetbody"
    case .targetbodycom:
      return "targetbodycom"
    }
  }
}
/// type of light
@objc
public enum MjtLightType: Int32, CustomStringConvertible {
  case spot = 0
  case directional
  case point
  case image
  public var description: String {
    switch self {
    case .spot:
      return "spot"
    case .directional:
      return "directional"
    case .point:
      return "point"
    case .image:
      return "image"
    }
  }
}
/// type of texture
@objc
public enum MjtTexture: Int32, CustomStringConvertible {
  case _2d = 0
  case cube
  case skybox
  public var description: String {
    switch self {
    case ._2d:
      return "_2d"
    case .cube:
      return "cube"
    case .skybox:
      return "skybox"
    }
  }
}
/// role of texture map in rendering
@objc
public enum MjtTextureRole: Int32, CustomStringConvertible, CaseIterable {
  case user = 0
  case rgb
  case occlusion
  case roughness
  case metallic
  case normal
  case opacity
  case emissive
  case rgba
  case orm
  public var description: String {
    switch self {
    case .user:
      return "user"
    case .rgb:
      return "rgb"
    case .occlusion:
      return "occlusion"
    case .roughness:
      return "roughness"
    case .metallic:
      return "metallic"
    case .normal:
      return "normal"
    case .opacity:
      return "opacity"
    case .emissive:
      return "emissive"
    case .rgba:
      return "rgba"
    case .orm:
      return "orm"
    }
  }
}
/// type of color space encoding
@objc
public enum MjtColorSpace: Int32, CustomStringConvertible {
  case auto = 0
  case linear
  case srgb
  public var description: String {
    switch self {
    case .auto:
      return "auto"
    case .linear:
      return "linear"
    case .srgb:
      return "srgb"
    }
  }
}
/// integrator mode
@objc
public enum MjtIntegrator: Int32, CustomStringConvertible {
  case euler = 0
  case rk4
  case implicit
  case implicitfast
  public var description: String {
    switch self {
    case .euler:
      return "euler"
    case .rk4:
      return "rk4"
    case .implicit:
      return "implicit"
    case .implicitfast:
      return "implicitfast"
    }
  }
}
/// type of friction cone
@objc
public enum MjtCone: Int32, CustomStringConvertible {
  case pyramidal = 0
  case elliptic
  public var description: String {
    switch self {
    case .pyramidal:
      return "pyramidal"
    case .elliptic:
      return "elliptic"
    }
  }
}
/// type of constraint Jacobian
@objc
public enum MjtJacobian: Int32, CustomStringConvertible {
  case dense = 0
  case sparse
  case auto
  public var description: String {
    switch self {
    case .dense:
      return "dense"
    case .sparse:
      return "sparse"
    case .auto:
      return "auto"
    }
  }
}
/// constraint solver algorithm
@objc
public enum MjtSolver: Int32, CustomStringConvertible {
  case pgs = 0
  case cg
  case newton
  public var description: String {
    switch self {
    case .pgs:
      return "pgs"
    case .cg:
      return "cg"
    case .newton:
      return "newton"
    }
  }
}
/// type of equality constraint
@objc
public enum MjtEq: Int32, CustomStringConvertible {
  case connect = 0
  case weld
  case joint
  case tendon
  case flex
  case flexvert
  case flexstrain
  case distance
  public var description: String {
    switch self {
    case .connect:
      return "connect"
    case .weld:
      return "weld"
    case .joint:
      return "joint"
    case .tendon:
      return "tendon"
    case .flex:
      return "flex"
    case .flexvert:
      return "flexvert"
    case .flexstrain:
      return "flexstrain"
    case .distance:
      return "distance"
    }
  }
}
/// type of tendon wrap object
@objc
public enum MjtWrap: Int32, CustomStringConvertible {
  case none = 0
  case joint
  case pulley
  case site
  case sphere
  case cylinder
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .joint:
      return "joint"
    case .pulley:
      return "pulley"
    case .site:
      return "site"
    case .sphere:
      return "sphere"
    case .cylinder:
      return "cylinder"
    }
  }
}
/// type of actuator transmission
@objc
public enum MjtTrn: Int32, CustomStringConvertible {
  case joint = 0
  case jointinparent
  case slidercrank
  case tendon
  case site
  case body
  case undefined = 1000
  public var description: String {
    switch self {
    case .joint:
      return "joint"
    case .jointinparent:
      return "jointinparent"
    case .slidercrank:
      return "slidercrank"
    case .tendon:
      return "tendon"
    case .site:
      return "site"
    case .body:
      return "body"
    case .undefined:
      return "undefined"
    }
  }
}
/// type of actuator dynamics
@objc
public enum MjtDyn: Int32, CustomStringConvertible {
  case none = 0
  case integrator
  case filter
  case filterexact
  case muscle
  case dcmotor
  case user
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .integrator:
      return "integrator"
    case .filter:
      return "filter"
    case .filterexact:
      return "filterexact"
    case .muscle:
      return "muscle"
    case .dcmotor:
      return "dcmotor"
    case .user:
      return "user"
    }
  }
}
/// type of actuator gain
@objc
public enum MjtGain: Int32, CustomStringConvertible {
  case fixed = 0
  case affine
  case muscle
  case dcmotor
  case user
  public var description: String {
    switch self {
    case .fixed:
      return "fixed"
    case .affine:
      return "affine"
    case .muscle:
      return "muscle"
    case .dcmotor:
      return "dcmotor"
    case .user:
      return "user"
    }
  }
}
/// type of actuator bias
@objc
public enum MjtBias: Int32, CustomStringConvertible {
  case none = 0
  case affine
  case muscle
  case dcmotor
  case user
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .affine:
      return "affine"
    case .muscle:
      return "muscle"
    case .dcmotor:
      return "dcmotor"
    case .user:
      return "user"
    }
  }
}
/// type of MujoCo object
@objc
public enum MjtObj: Int32, CustomStringConvertible, CaseIterable {
  case unknown = 0
  case body
  case xbody
  case joint
  case dof
  case geom
  case site
  case camera
  case light
  case flex
  case mesh
  case skin
  case hfield
  case texture
  case material
  case pair
  case exclude
  case equality
  case tendon
  case actuator
  case sensor
  case numeric
  case text
  case tuple
  case key
  case plugin
  case frame = 100
  case `default`
  case model
  public var description: String {
    switch self {
    case .unknown:
      return "unknown"
    case .body:
      return "body"
    case .xbody:
      return "xbody"
    case .joint:
      return "joint"
    case .dof:
      return "dof"
    case .geom:
      return "geom"
    case .site:
      return "site"
    case .camera:
      return "camera"
    case .light:
      return "light"
    case .flex:
      return "flex"
    case .mesh:
      return "mesh"
    case .skin:
      return "skin"
    case .hfield:
      return "hfield"
    case .texture:
      return "texture"
    case .material:
      return "material"
    case .pair:
      return "pair"
    case .exclude:
      return "exclude"
    case .equality:
      return "equality"
    case .tendon:
      return "tendon"
    case .actuator:
      return "actuator"
    case .sensor:
      return "sensor"
    case .numeric:
      return "numeric"
    case .text:
      return "text"
    case .tuple:
      return "tuple"
    case .key:
      return "key"
    case .plugin:
      return "plugin"
    case .frame:
      return "frame"
    case .`default`:
      return "default"
    case .model:
      return "model"
    }
  }
}
/// type of sensor
@objc
public enum MjtSensor: Int32, CustomStringConvertible {
  case touch = 0
  case accelerometer
  case velocimeter
  case gyro
  case force
  case torque
  case magnetometer
  case rangefinder
  case camprojection
  case jointpos
  case jointvel
  case tendonpos
  case tendonvel
  case actuatorpos
  case actuatorvel
  case actuatorfrc
  case jointactfrc
  case tendonactfrc
  case ballquat
  case ballangvel
  case jointlimitpos
  case jointlimitvel
  case jointlimitfrc
  case tendonlimitpos
  case tendonlimitvel
  case tendonlimitfrc
  case framepos
  case framequat
  case framexaxis
  case frameyaxis
  case framezaxis
  case framelinvel
  case frameangvel
  case framelinacc
  case frameangacc
  case subtreecom
  case subtreelinvel
  case subtreeangmom
  case insidesite
  case geomdist
  case geomnormal
  case geomfromto
  case contact
  case ePotential
  case eKinetic
  case clock
  case tactile
  case plugin
  case user
  public var description: String {
    switch self {
    case .touch:
      return "touch"
    case .accelerometer:
      return "accelerometer"
    case .velocimeter:
      return "velocimeter"
    case .gyro:
      return "gyro"
    case .force:
      return "force"
    case .torque:
      return "torque"
    case .magnetometer:
      return "magnetometer"
    case .rangefinder:
      return "rangefinder"
    case .camprojection:
      return "camprojection"
    case .jointpos:
      return "jointpos"
    case .jointvel:
      return "jointvel"
    case .tendonpos:
      return "tendonpos"
    case .tendonvel:
      return "tendonvel"
    case .actuatorpos:
      return "actuatorpos"
    case .actuatorvel:
      return "actuatorvel"
    case .actuatorfrc:
      return "actuatorfrc"
    case .jointactfrc:
      return "jointactfrc"
    case .tendonactfrc:
      return "tendonactfrc"
    case .ballquat:
      return "ballquat"
    case .ballangvel:
      return "ballangvel"
    case .jointlimitpos:
      return "jointlimitpos"
    case .jointlimitvel:
      return "jointlimitvel"
    case .jointlimitfrc:
      return "jointlimitfrc"
    case .tendonlimitpos:
      return "tendonlimitpos"
    case .tendonlimitvel:
      return "tendonlimitvel"
    case .tendonlimitfrc:
      return "tendonlimitfrc"
    case .framepos:
      return "framepos"
    case .framequat:
      return "framequat"
    case .framexaxis:
      return "framexaxis"
    case .frameyaxis:
      return "frameyaxis"
    case .framezaxis:
      return "framezaxis"
    case .framelinvel:
      return "framelinvel"
    case .frameangvel:
      return "frameangvel"
    case .framelinacc:
      return "framelinacc"
    case .frameangacc:
      return "frameangacc"
    case .subtreecom:
      return "subtreecom"
    case .subtreelinvel:
      return "subtreelinvel"
    case .subtreeangmom:
      return "subtreeangmom"
    case .insidesite:
      return "insidesite"
    case .geomdist:
      return "geomdist"
    case .geomnormal:
      return "geomnormal"
    case .geomfromto:
      return "geomfromto"
    case .contact:
      return "contact"
    case .ePotential:
      return "ePotential"
    case .eKinetic:
      return "eKinetic"
    case .clock:
      return "clock"
    case .tactile:
      return "tactile"
    case .plugin:
      return "plugin"
    case .user:
      return "user"
    }
  }
}
/// computation stage
@objc
public enum MjtStage: Int32, CustomStringConvertible {
  case none = 0
  case pos
  case vel
  case acc
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .pos:
      return "pos"
    case .vel:
      return "vel"
    case .acc:
      return "acc"
    }
  }
}
/// data type for sensors
@objc
public enum MjtDataType: Int32, CustomStringConvertible {
  case real = 0
  case positive
  case axis
  case quaternion
  public var description: String {
    switch self {
    case .real:
      return "real"
    case .positive:
      return "positive"
    case .axis:
      return "axis"
    case .quaternion:
      return "quaternion"
    }
  }
}
/// data fields returned by contact sensors
@objc
public enum MjtConDataField: Int32, CustomStringConvertible, CaseIterable {
  case found = 0
  case force
  case torque
  case dist
  case pos
  case normal
  case tangent
  public var description: String {
    switch self {
    case .found:
      return "found"
    case .force:
      return "force"
    case .torque:
      return "torque"
    case .dist:
      return "dist"
    case .pos:
      return "pos"
    case .normal:
      return "normal"
    case .tangent:
      return "tangent"
    }
  }
}
/// data fields returned by rangefinder sensors
@objc
public enum MjtRayDataField: Int32, CustomStringConvertible, CaseIterable {
  case dist = 0
  case dir
  case origin
  case point
  case normal
  case depth
  public var description: String {
    switch self {
    case .dist:
      return "dist"
    case .dir:
      return "dir"
    case .origin:
      return "origin"
    case .point:
      return "point"
    case .normal:
      return "normal"
    case .depth:
      return "depth"
    }
  }
}
/// camera output type bitflags
@objc
public enum MjtCamOutBit: Int32, CustomStringConvertible, CaseIterable {
  case rgb = 1
  case depth = 2
  case dist = 4
  case normal = 8
  case seg = 16
  public var description: String {
    switch self {
    case .rgb:
      return "rgb"
    case .depth:
      return "depth"
    case .dist:
      return "dist"
    case .normal:
      return "normal"
    case .seg:
      return "seg"
    }
  }
}
/// frame alignment of bodies with their children
@objc
public enum MjtSameFrame: Int32, CustomStringConvertible {
  case none = 0
  case body
  case inertia
  case bodyrot
  case inertiarot
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .body:
      return "body"
    case .inertia:
      return "inertia"
    case .bodyrot:
      return "bodyrot"
    case .inertiarot:
      return "inertiarot"
    }
  }
}
/// per-tree sleep policy
@objc
public enum MjtSleepPolicy: Int32, CustomStringConvertible {
  case auto = 0
  case autoNever
  case autoAllowed
  case never
  case allowed
  case `init`
  public var description: String {
    switch self {
    case .auto:
      return "auto"
    case .autoNever:
      return "autoNever"
    case .autoAllowed:
      return "autoAllowed"
    case .never:
      return "never"
    case .allowed:
      return "allowed"
    case .`init`:
      return "init"
    }
  }
}
/// mode for actuator length range computation
@objc
public enum MjtLRMode: Int32, CustomStringConvertible {
  case none = 0
  case muscle
  case muscleuser
  case all
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .muscle:
      return "muscle"
    case .muscleuser:
      return "muscleuser"
    case .all:
      return "all"
    }
  }
}
/// mode for flex selfcollide
@objc
public enum MjtFlexSelf: Int32, CustomStringConvertible {
  case none = 0
  case narrow
  case bvh
  case sap
  case auto
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .narrow:
      return "narrow"
    case .bvh:
      return "bvh"
    case .sap:
      return "sap"
    case .auto:
      return "auto"
    }
  }
}
/// signed distance function (SDF) type
@objc
public enum MjtSDFType: Int32, CustomStringConvertible {
  case single = 0
  case intersection
  case midsurface
  case collision
  public var description: String {
    switch self {
    case .single:
      return "single"
    case .intersection:
      return "intersection"
    case .midsurface:
      return "midsurface"
    case .collision:
      return "collision"
    }
  }
}
/// type of constraint
@objc
public enum MjtConstraint: Int32, CustomStringConvertible {
  case equality = 0
  case frictionDof
  case frictionTendon
  case limitJoint
  case limitTendon
  case contactFrictionless
  case contactPyramidal
  case contactElliptic
  public var description: String {
    switch self {
    case .equality:
      return "equality"
    case .frictionDof:
      return "frictionDof"
    case .frictionTendon:
      return "frictionTendon"
    case .limitJoint:
      return "limitJoint"
    case .limitTendon:
      return "limitTendon"
    case .contactFrictionless:
      return "contactFrictionless"
    case .contactPyramidal:
      return "contactPyramidal"
    case .contactElliptic:
      return "contactElliptic"
    }
  }
}
/// constraint state
@objc
public enum MjtConstraintState: Int32, CustomStringConvertible {
  case satisfied = 0
  case quadratic
  case linearneg
  case linearpos
  case cone
  public var description: String {
    switch self {
    case .satisfied:
      return "satisfied"
    case .quadratic:
      return "quadratic"
    case .linearneg:
      return "linearneg"
    case .linearpos:
      return "linearpos"
    case .cone:
      return "cone"
    }
  }
}
/// warning types
@objc
public enum MjtWarning: Int32, CustomStringConvertible, CaseIterable {
  case inertia = 0
  case contactfull
  case cnstrfull
  case badqpos
  case badqvel
  case badqacc
  case badctrl
  public var description: String {
    switch self {
    case .inertia:
      return "inertia"
    case .contactfull:
      return "contactfull"
    case .cnstrfull:
      return "cnstrfull"
    case .badqpos:
      return "badqpos"
    case .badqvel:
      return "badqvel"
    case .badqacc:
      return "badqacc"
    case .badctrl:
      return "badctrl"
    }
  }
}
/// internal timers
@objc
public enum MjtTimer: Int32, CustomStringConvertible, CaseIterable {
  case step = 0
  case forward
  case inverse
  case position
  case velocity
  case actuation
  case constraint
  case advance
  case posKinematics
  case posInertia
  case posCollision
  case posMake
  case posProject
  case colBroad
  case colNarrow
  public var description: String {
    switch self {
    case .step:
      return "step"
    case .forward:
      return "forward"
    case .inverse:
      return "inverse"
    case .position:
      return "position"
    case .velocity:
      return "velocity"
    case .actuation:
      return "actuation"
    case .constraint:
      return "constraint"
    case .advance:
      return "advance"
    case .posKinematics:
      return "posKinematics"
    case .posInertia:
      return "posInertia"
    case .posCollision:
      return "posCollision"
    case .posMake:
      return "posMake"
    case .posProject:
      return "posProject"
    case .colBroad:
      return "colBroad"
    case .colNarrow:
      return "colNarrow"
    }
  }
}
/// sleep state of an object
@objc
public enum MjtSleepState: Int32, CustomStringConvertible {
  case `static` = -1
  case asleep = 0
  case awake = 1
  public var description: String {
    switch self {
    case .`static`:
      return "static"
    case .asleep:
      return "asleep"
    case .awake:
      return "awake"
    }
  }
}
/// status values for mjTask
@objc
public enum MjtTaskStatus: Int32, CustomStringConvertible {
  case new = 0
  case queued
  case completed
  public var description: String {
    switch self {
    case .new:
      return "new"
    case .queued:
      return "queued"
    case .completed:
      return "completed"
    }
  }
}
/// bitflags for mjvGeom category
public struct MjtCatBit: OptionSet, CustomStringConvertible {
  public let rawValue: Int32
  public init(rawValue: Int32) {
    self.rawValue = rawValue
  }
  public static let `static` = MjtCatBit(rawValue: 1)
  public static let `dynamic` = MjtCatBit(rawValue: 2)
  public static let decor = MjtCatBit(rawValue: 4)
  public static let all = MjtCatBit(rawValue: 7)
  public var description: String {
    switch self {
    case .`static`:
      return "static"
    case .`dynamic`:
      return "dynamic"
    case .decor:
      return "decor"
    case .all:
      return "all"
    default:
      return "MjtCatBit(rawValue: \(rawValue))"
    }
  }
}
/// mouse interaction mode
@objc
public enum MjtMouse: Int32, CustomStringConvertible {
  case none = 0
  case rotateV
  case rotateH
  case moveV
  case moveH
  case zoom
  case moveVRel
  case moveHRel
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .rotateV:
      return "rotateV"
    case .rotateH:
      return "rotateH"
    case .moveV:
      return "moveV"
    case .moveH:
      return "moveH"
    case .zoom:
      return "zoom"
    case .moveVRel:
      return "moveVRel"
    case .moveHRel:
      return "moveHRel"
    }
  }
}
/// mouse perturbations
public struct MjtPertBit: OptionSet, CustomStringConvertible {
  public let rawValue: Int32
  public init(rawValue: Int32) {
    self.rawValue = rawValue
  }
  public static let translate = MjtPertBit(rawValue: 1)
  public static let rotate = MjtPertBit(rawValue: 2)
  public var description: String {
    switch self {
    case .translate:
      return "translate"
    case .rotate:
      return "rotate"
    default:
      return "MjtPertBit(rawValue: \(rawValue))"
    }
  }
}
/// abstract camera type
@objc
public enum MjtCamera: Int32, CustomStringConvertible {
  case free = 0
  case tracking
  case fixed
  case user
  public var description: String {
    switch self {
    case .free:
      return "free"
    case .tracking:
      return "tracking"
    case .fixed:
      return "fixed"
    case .user:
      return "user"
    }
  }
}
/// object labeling
@objc
public enum MjtLabel: Int32, CustomStringConvertible, CaseIterable {
  case none = 0
  case body
  case joint
  case geom
  case site
  case camera
  case light
  case tendon
  case actuator
  case constraint
  case flex
  case skin
  case selection
  case selpnt
  case contactpoint
  case contactforce
  case island
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .body:
      return "body"
    case .joint:
      return "joint"
    case .geom:
      return "geom"
    case .site:
      return "site"
    case .camera:
      return "camera"
    case .light:
      return "light"
    case .tendon:
      return "tendon"
    case .actuator:
      return "actuator"
    case .constraint:
      return "constraint"
    case .flex:
      return "flex"
    case .skin:
      return "skin"
    case .selection:
      return "selection"
    case .selpnt:
      return "selpnt"
    case .contactpoint:
      return "contactpoint"
    case .contactforce:
      return "contactforce"
    case .island:
      return "island"
    }
  }
}
/// frame visualization
@objc
public enum MjtFrame: Int32, CustomStringConvertible, CaseIterable {
  case none = 0
  case body
  case geom
  case site
  case camera
  case light
  case contact
  case world
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .body:
      return "body"
    case .geom:
      return "geom"
    case .site:
      return "site"
    case .camera:
      return "camera"
    case .light:
      return "light"
    case .contact:
      return "contact"
    case .world:
      return "world"
    }
  }
}
/// flags enabling model element visualization
@objc
public enum MjtVisFlag: Int32, CustomStringConvertible, CaseIterable {
  case convexhull = 0
  case texture
  case joint
  case camera
  case actuator
  case activation
  case light
  case tendon
  case rangefinder
  case constraint
  case inertia
  case sclinertia
  case pertforce
  case pertobj
  case contactpoint
  case island
  case contactforce
  case contactsplit
  case transparent
  case autoconnect
  case com
  case select
  case `static`
  case skin
  case flexvert
  case flexedge
  case flexface
  case flexskin
  case bodybvh
  case meshbvh
  case sdfiter
  public var description: String {
    switch self {
    case .convexhull:
      return "convexhull"
    case .texture:
      return "texture"
    case .joint:
      return "joint"
    case .camera:
      return "camera"
    case .actuator:
      return "actuator"
    case .activation:
      return "activation"
    case .light:
      return "light"
    case .tendon:
      return "tendon"
    case .rangefinder:
      return "rangefinder"
    case .constraint:
      return "constraint"
    case .inertia:
      return "inertia"
    case .sclinertia:
      return "sclinertia"
    case .pertforce:
      return "pertforce"
    case .pertobj:
      return "pertobj"
    case .contactpoint:
      return "contactpoint"
    case .island:
      return "island"
    case .contactforce:
      return "contactforce"
    case .contactsplit:
      return "contactsplit"
    case .transparent:
      return "transparent"
    case .autoconnect:
      return "autoconnect"
    case .com:
      return "com"
    case .select:
      return "select"
    case .`static`:
      return "static"
    case .skin:
      return "skin"
    case .flexvert:
      return "flexvert"
    case .flexedge:
      return "flexedge"
    case .flexface:
      return "flexface"
    case .flexskin:
      return "flexskin"
    case .bodybvh:
      return "bodybvh"
    case .meshbvh:
      return "meshbvh"
    case .sdfiter:
      return "sdfiter"
    }
  }
}
/// flags enabling rendering effects
@objc
public enum MjtRndFlag: Int32, CustomStringConvertible, CaseIterable {
  case shadow = 0
  case wireframe
  case reflection
  case additive
  case skybox
  case fog
  case haze
  case depth
  case segment
  case idcolor
  case cullFace
  public var description: String {
    switch self {
    case .shadow:
      return "shadow"
    case .wireframe:
      return "wireframe"
    case .reflection:
      return "reflection"
    case .additive:
      return "additive"
    case .skybox:
      return "skybox"
    case .fog:
      return "fog"
    case .haze:
      return "haze"
    case .depth:
      return "depth"
    case .segment:
      return "segment"
    case .idcolor:
      return "idcolor"
    case .cullFace:
      return "cullFace"
    }
  }
}
/// type of stereo rendering
@objc
public enum MjtStereo: Int32, CustomStringConvertible {
  case none = 0
  case quadbuffered
  case sidebyside
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .quadbuffered:
      return "quadbuffered"
    case .sidebyside:
      return "sidebyside"
    }
  }
}
/// grid position for overlay
@objc
public enum MjtGridPos: Int32, CustomStringConvertible {
  case topleft = 0
  case topright
  case bottomleft
  case bottomright
  case top
  case bottom
  case left
  case right
  public var description: String {
    switch self {
    case .topleft:
      return "topleft"
    case .topright:
      return "topright"
    case .bottomleft:
      return "bottomleft"
    case .bottomright:
      return "bottomright"
    case .top:
      return "top"
    case .bottom:
      return "bottom"
    case .left:
      return "left"
    case .right:
      return "right"
    }
  }
}
/// OpenGL framebuffer option
@objc
public enum MjtFramebuffer: Int32, CustomStringConvertible {
  case window = 0
  case offscreen
  public var description: String {
    switch self {
    case .window:
      return "window"
    case .offscreen:
      return "offscreen"
    }
  }
}
/// depth mapping for `mjr_readPixels`
@objc
public enum MjtDepthMap: Int32, CustomStringConvertible {
  case zeronear = 0
  case zerofar = 1
  public var description: String {
    switch self {
    case .zeronear:
      return "zeronear"
    case .zerofar:
      return "zerofar"
    }
  }
}
/// font scale, used at context creation
@objc
public enum MjtFontScale: Int32, CustomStringConvertible {
  case _50 = 50
  case _100 = 100
  case _150 = 150
  case _200 = 200
  case _250 = 250
  case _300 = 300
  public var description: String {
    switch self {
    case ._50:
      return "_50"
    case ._100:
      return "_100"
    case ._150:
      return "_150"
    case ._200:
      return "_200"
    case ._250:
      return "_250"
    case ._300:
      return "_300"
    }
  }
}
/// font type, used at each text operation
@objc
public enum MjtFont: Int32, CustomStringConvertible {
  case normal = 0
  case shadow
  case big
  public var description: String {
    switch self {
    case .normal:
      return "normal"
    case .shadow:
      return "shadow"
    case .big:
      return "big"
    }
  }
}
/// mouse button
@objc
public enum MjtButton: Int32, CustomStringConvertible {
  case none = 0
  case left
  case right
  case middle
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .left:
      return "left"
    case .right:
      return "right"
    case .middle:
      return "middle"
    }
  }
}
/// mouse and keyboard event type
@objc
public enum MjtEvent: Int32, CustomStringConvertible {
  case none = 0
  case move
  case press
  case release
  case scroll
  case key
  case resize
  case redraw
  case filesdrop
  public var description: String {
    switch self {
    case .none:
      return "none"
    case .move:
      return "move"
    case .press:
      return "press"
    case .release:
      return "release"
    case .scroll:
      return "scroll"
    case .key:
      return "key"
    case .resize:
      return "resize"
    case .redraw:
      return "redraw"
    case .filesdrop:
      return "filesdrop"
    }
  }
}
/// UI item type
@objc
public enum MjtItem: Int32, CustomStringConvertible, CaseIterable {
  case end = -2
  case section = -1
  case separator = 0
  case `static`
  case button
  case checkint
  case checkbyte
  case radio
  case radioline
  case select
  case sliderint
  case slidernum
  case editint
  case editnum
  case editfloat
  case edittxt
  public var description: String {
    switch self {
    case .end:
      return "end"
    case .section:
      return "section"
    case .separator:
      return "separator"
    case .`static`:
      return "static"
    case .button:
      return "button"
    case .checkint:
      return "checkint"
    case .checkbyte:
      return "checkbyte"
    case .radio:
      return "radio"
    case .radioline:
      return "radioline"
    case .select:
      return "select"
    case .sliderint:
      return "sliderint"
    case .slidernum:
      return "slidernum"
    case .editint:
      return "editint"
    case .editnum:
      return "editnum"
    case .editfloat:
      return "editfloat"
    case .edittxt:
      return "edittxt"
    }
  }
}
/// UI section state
@objc
public enum MjtSection: Int32, CustomStringConvertible {
  case closed = 0
  case open
  case fixed
  public var description: String {
    switch self {
    case .closed:
      return "closed"
    case .open:
      return "open"
    case .fixed:
      return "fixed"
    }
  }
}
@objc
public enum MjtPluginCapabilityBit: Int32, CustomStringConvertible {
  case actuator = 1
  case sensor = 2
  case passive = 4
  case sdf = 8
  public var description: String {
    switch self {
    case .actuator:
      return "actuator"
    case .sensor:
      return "sensor"
    case .passive:
      return "passive"
    case .sdf:
      return "sdf"
    }
  }
}
