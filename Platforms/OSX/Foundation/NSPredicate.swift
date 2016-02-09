
@available(OSX 10.4, *)
class Predicate : Object, SecureCoding, Copying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  @available(OSX 10.9, *)
  /*not inherited*/ init?(fromMetadataQueryString queryString: String)
  /*not inherited*/ init(value: Bool)
  @available(OSX 10.6, *)
  /*not inherited*/ init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluate(withObject object: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  func evaluate(withObject object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(OSX 10.9, *)
  func allowEvaluation()
  init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}

extension Predicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArray(usingPredicate predicate: Predicate) -> [AnyObject]
}
extension MutableArray {
  func filter(usingPredicate predicate: Predicate)
}
extension NSSet {
  @available(OSX 10.5, *)
  func filteredSet(usingPredicate predicate: Predicate) -> Set<Object>
}
extension MutableSet {
  @available(OSX 10.5, *)
  func filter(usingPredicate predicate: Predicate)
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func filteredOrderedSet(usingPredicate p: Predicate) -> OrderedSet
}
extension MutableOrderedSet {
  @available(OSX 10.7, *)
  func filter(usingPredicate p: Predicate)
}