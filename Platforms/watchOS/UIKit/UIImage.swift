
enum UIImageOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case left
  case right
  case upMirrored
  case downMirrored
  case leftMirrored
  case rightMirrored
}
enum UIImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case tile
  case stretch
}
@available(watchOS 2.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case alwaysOriginal
  case alwaysTemplate
}
@available(watchOS 2.0, *)
class UIImage : Object, SecureCoding {
  /*not inherited*/ init?(named name: String)
  init?(contentsOfFile path: String)
  init?(data: Data)
  @available(watchOS 2.0, *)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  @available(watchOS 2.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(watchOS 2.0, *)
  var scale: CGFloat { get }
  @available(watchOS 2.0, *)
  class func animatedImageNamed(name: String, duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedImage(withImages images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  var images: [UIImage]? { get }
  @available(watchOS 2.0, *)
  var duration: TimeInterval { get }
  func draw(at point: CGPoint)
  func draw(at point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func draw(in rect: CGRect)
  func draw(in rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPattern(in rect: CGRect)
  @available(watchOS 2.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(watchOS 2.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(watchOS 2.0, *)
  func withAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  func withRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(watchOS 2.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(watchOS 2.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(watchOS 2.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
  func stretchableImage(withLeftCapWidth leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
func UIImagePNGRepresentation(image: UIImage) -> Data?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> Data?