
@available(iOS 3.2, *)
class AttributedString : Object, Copying, MutableCopying, SecureCoding {
  var string: String { get }
  func attributes(at location: Int, effectiveRange range: RangePointer) -> [String : AnyObject]
  init()
  @available(iOS 3.2, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 3.2, *)
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 3.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.2, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  var length: Int { get }
  func attribute(attrName: String, at location: Int, effectiveRange range: RangePointer) -> AnyObject?
  func attributedSubstring(from range: NSRange) -> AttributedString
  func attributes(at location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  func attribute(attrName: String, at location: Int, longestEffectiveRange range: RangePointer, in rangeLimit: NSRange) -> AnyObject?
  func isEqual(to other: AttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
  @available(iOS 4.0, *)
  func enumerateAttributes(in enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], usingBlock block: ([String : AnyObject], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateAttribute(attrName: String, in enumerationRange: NSRange, options opts: AttributedStringEnumerationOptions = [], usingBlock block: (AnyObject?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
struct AttributedStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var reverse: AttributedStringEnumerationOptions { get }
  static var longestEffectiveRangeNotRequired: AttributedStringEnumerationOptions { get }
}
@available(iOS 3.2, *)
class MutableAttributedString : AttributedString {
  func replaceCharacters(in range: NSRange, withString str: String)
  func setAttributes(attrs: [String : AnyObject]? = [:], range: NSRange)
  init()
  init?(coder aDecoder: Coder)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]? = [:])
  init(attributedString attrStr: AttributedString)
}
extension MutableAttributedString {
  var mutableString: MutableString { get }
  func addAttribute(name: String, value: AnyObject, range: NSRange)
  func addAttributes(attrs: [String : AnyObject] = [:], range: NSRange)
  func removeAttribute(name: String, range: NSRange)
  func replaceCharacters(in range: NSRange, withAttributedString attrString: AttributedString)
  func insert(attrString: AttributedString, at loc: Int)
  func append(attrString: AttributedString)
  func deleteCharacters(in range: NSRange)
  func setAttributedString(attrString: AttributedString)
  func beginEditing()
  func endEditing()
}