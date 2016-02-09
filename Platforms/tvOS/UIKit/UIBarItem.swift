
@available(tvOS 2.0, *)
class UIBarItem : Object, Coding, UIAppearance {
  init()
  init?(coder aDecoder: Coder)
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  var imageInsets: UIEdgeInsets
  var tag: Int
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]? = [:], forState state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributes(forState state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 2.0, *)
  func encodeWith(aCoder: Coder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstances(ofClasses containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearance(forTraitCollection trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearance(forTraitCollection trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}