
@available(OSX 10.11, *)
class CNContactFetchRequest : NSObject {
  init(keysToFetch keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: NSPredicate?
  var keysToFetch: [CNKeyDescriptor]
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
}
