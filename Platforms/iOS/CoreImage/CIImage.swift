
@available(iOS 5.0, *)
class CIImage : Object, SecureCoding, Copying {
  class func empty() -> CIImage
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [String : AnyObject]? = [:])
  init?(data: Data)
  init?(data: Data, options: [String : AnyObject]? = [:])
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(iOS 6.0, *)
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(iOS 9.0, *)
  init(mtlTexture texture: MTLTexture, options: [String : AnyObject]? = [:])
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [String : AnyObject]? = [:])
  @available(iOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(iOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [String : AnyObject]? = [:])
  @available(iOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(iOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [String : AnyObject]? = [:])
  init(color: CIColor)
  func applying(matrix: CGAffineTransform) -> CIImage
  @available(iOS 8.0, *)
  func applyingOrientation(orientation: Int32) -> CIImage
  @available(iOS 8.0, *)
  func imageTransform(forOrientation orientation: Int32) -> CGAffineTransform
  @available(iOS 8.0, *)
  func byCompositingOverImage(dest: CIImage) -> CIImage
  func byCropping(to rect: CGRect) -> CIImage
  @available(iOS 8.0, *)
  func byClampingToExtent() -> CIImage
  @available(iOS 8.0, *)
  func applyingFilter(filterName: String, withInputParameters params: [String : AnyObject]?) -> CIImage
  var extent: CGRect { get }
  @available(iOS 5.0, *)
  var properties: [String : AnyObject] { get }
  @available(iOS 9.0, *)
  var url: URL? { get }
  @available(iOS 9.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(iOS 6.0, *)
  func regionOfInterest(forImage image: CIImage, in rect: CGRect) -> CGRect
  init()
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 5.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
typealias CIFormat = Int32
@available(iOS 6.0, *)
var kCIFormatARGB8: CIFormat
var kCIFormatBGRA8: CIFormat
var kCIFormatRGBA8: CIFormat
@available(iOS 9.0, *)
var kCIFormatABGR8: CIFormat
@available(iOS 7.0, *)
var kCIFormatRGBAf: CIFormat
@available(iOS 6.0, *)
var kCIFormatRGBAh: CIFormat
@available(iOS 9.0, *)
var kCIFormatA8: CIFormat
@available(iOS 9.0, *)
var kCIFormatA16: CIFormat
@available(iOS 9.0, *)
var kCIFormatAh: CIFormat
@available(iOS 9.0, *)
var kCIFormatAf: CIFormat
@available(iOS 9.0, *)
var kCIFormatR8: CIFormat
@available(iOS 9.0, *)
var kCIFormatR16: CIFormat
@available(iOS 9.0, *)
var kCIFormatRh: CIFormat
@available(iOS 9.0, *)
var kCIFormatRf: CIFormat
@available(iOS 9.0, *)
var kCIFormatRG8: CIFormat
@available(iOS 9.0, *)
var kCIFormatRG16: CIFormat
@available(iOS 9.0, *)
var kCIFormatRGh: CIFormat
@available(iOS 9.0, *)
var kCIFormatRGf: CIFormat
let kCIImageColorSpace: String
@available(iOS 5.0, *)
let kCIImageProperties: String
extension CIImage {
  @available(iOS 5.0, *)
  func autoAdjustmentFilters(options options: [String : AnyObject]? = [:]) -> [CIFilter]
}
@available(iOS 5.0, *)
let kCIImageAutoAdjustEnhance: String
@available(iOS 5.0, *)
let kCIImageAutoAdjustRedEye: String
@available(iOS 5.0, *)
let kCIImageAutoAdjustFeatures: String
@available(iOS 8.0, *)
let kCIImageAutoAdjustCrop: String
@available(iOS 8.0, *)
let kCIImageAutoAdjustLevel: String