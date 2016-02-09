
@available(tvOS 9.0, *)
class CIFilterShape : Object, Copying {
  init(rect r: CGRect)
  func transform(by m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func inset(byx dx: Int32, y dy: Int32) -> CIFilterShape
  func union(with s2: CIFilterShape) -> CIFilterShape
  func union(withRect r: CGRect) -> CIFilterShape
  func intersect(with s2: CIFilterShape) -> CIFilterShape
  func intersect(withRect r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(tvOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}