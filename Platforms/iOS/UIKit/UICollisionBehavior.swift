
@available(iOS 7.0, *)
struct UICollisionBehaviorMode : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var items: UICollisionBehaviorMode { get }
  static var boundaries: UICollisionBehaviorMode { get }
  static var everything: UICollisionBehaviorMode { get }
}
protocol UICollisionBehaviorDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, withItem item2: UIDynamicItem, at p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, withItem item2: UIDynamicItem)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: Copying?, at p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: Copying?)
}
@available(iOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWith(insets: UIEdgeInsets)
  func addBoundary(identifier identifier: Copying, forPath bezierPath: UIBezierPath)
  func addBoundary(identifier identifier: Copying, from p1: CGPoint, to p2: CGPoint)
  func boundary(withIdentifier identifier: Copying) -> UIBezierPath?
  func removeBoundary(identifier identifier: Copying)
  var boundaryIdentifiers: [Copying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}