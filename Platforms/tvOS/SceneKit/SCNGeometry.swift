
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case triangles
  case triangleStrip
  case line
  case point
}
let SCNGeometrySourceSemanticVertex: String
let SCNGeometrySourceSemanticNormal: String
let SCNGeometrySourceSemanticColor: String
let SCNGeometrySourceSemanticTexcoord: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticVertexCrease: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticEdgeCrease: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticBoneWeights: String
@available(tvOS 8.0, *)
let SCNGeometrySourceSemanticBoneIndices: String
@available(tvOS 8.0, *)
class SCNGeometry : Object, SCNAnimatable, SCNBoundingVolume, SCNShadable, Copying, SecureCoding {
  var name: String?
  var materials: [SCNMaterial]
  var firstMaterial: SCNMaterial?
  func insertMaterial(material: SCNMaterial, at index: Int)
  func removeMaterial(at index: Int)
  func replaceMaterial(at index: Int, withMaterial material: SCNMaterial)
  func material(withName name: String) -> SCNMaterial?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  @available(tvOS 8.0, *)
  var geometrySources: [SCNGeometrySource] { get }
  func geometrySources(forSemantic semantic: String) -> [SCNGeometrySource]
  @available(tvOS 8.0, *)
  var geometryElements: [SCNGeometryElement] { get }
  var geometryElementCount: Int { get }
  func geometryElement(at elementIndex: Int) -> SCNGeometryElement
  @available(tvOS 8.0, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(tvOS 8.0, *)
  var subdivisionLevel: Int
  @available(tvOS 8.0, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(tvOS 8.0, *)
  var edgeCreasesSource: SCNGeometrySource?
  init()
  @available(tvOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(tvOS 8.0, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 8.0, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
  @available(tvOS 8.0, *)
  var program: SCNProgram?
  @available(tvOS 8.0, *)
  func handleBinding(ofSymbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(tvOS 8.0, *)
  func handleUnbinding(ofSymbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(tvOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 8.0, *)
class SCNGeometrySource : Object, SecureCoding {
  convenience init(data: Data, semantic: String, vectorCount: Int, floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(vertices: UnsafePointer<SCNVector3>, count: Int)
  convenience init(normals: UnsafePointer<SCNVector3>, count: Int)
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)
  @available(tvOS 9.0, *)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat: MTLVertexFormat, semantic: String, vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
  var data: Data { get }
  var semantic: String { get }
  var vectorCount: Int { get }
  var floatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 8.0, *)
class SCNGeometryElement : Object, SecureCoding {
  convenience init(data: Data?, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)
  var data: Data { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  var bytesPerIndex: Int { get }
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType)
}