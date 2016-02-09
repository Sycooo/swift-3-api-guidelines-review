
class CAAnimation : Object, Coding, Copying, CAMediaTiming, CAAction {
  class func defaultValue(forKey key: String) -> AnyObject?
  func shouldArchiveValue(forKey key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: AnyObject?
  var isRemovedOnCompletion: Bool
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  var beginTime: CFTimeInterval
  var duration: CFTimeInterval
  var speed: Float
  var timeOffset: CFTimeInterval
  var repeatCount: Float
  var repeatDuration: CFTimeInterval
  var autoreverses: Bool
  var fillMode: String
  @available(iOS 2.0, *)
  func runAction(forKey event: String, object anObject: AnyObject, arguments dict: [Object : AnyObject]?)
}
extension Object {
  class func animationDidStart(anim: CAAnimation)
  func animationDidStart(anim: CAAnimation)
  class func animationDidStop(anim: CAAnimation, finished flag: Bool)
  func animationDidStop(anim: CAAnimation, finished flag: Bool)
}
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
  init()
  init?(coder aDecoder: Coder)
}
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: AnyObject?
  var toValue: AnyObject?
  var byValue: AnyObject?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [AnyObject]?
  var path: CGPath?
  var keyTimes: [Number]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: String
  var tensionValues: [Number]?
  var continuityValues: [Number]?
  var biasValues: [Number]?
  var rotationMode: String?
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 2.0, *)
let kCAAnimationLinear: String
@available(iOS 2.0, *)
let kCAAnimationDiscrete: String
@available(iOS 2.0, *)
let kCAAnimationPaced: String
@available(iOS 4.0, *)
let kCAAnimationCubic: String
@available(iOS 4.0, *)
let kCAAnimationCubicPaced: String
@available(iOS 2.0, *)
let kCAAnimationRotateAuto: String
@available(iOS 2.0, *)
let kCAAnimationRotateAutoReverse: String
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
  convenience init(keyPath path: String?)
  init()
  init?(coder aDecoder: Coder)
}
class CATransition : CAAnimation {
  var type: String
  var subtype: String?
  var startProgress: Float
  var endProgress: Float
  var filter: AnyObject?
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 2.0, *)
let kCATransitionFade: String
@available(iOS 2.0, *)
let kCATransitionMoveIn: String
@available(iOS 2.0, *)
let kCATransitionPush: String
@available(iOS 2.0, *)
let kCATransitionReveal: String
@available(iOS 2.0, *)
let kCATransitionFromRight: String
@available(iOS 2.0, *)
let kCATransitionFromLeft: String
@available(iOS 2.0, *)
let kCATransitionFromTop: String
@available(iOS 2.0, *)
let kCATransitionFromBottom: String
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
  init()
  init?(coder aDecoder: Coder)
}