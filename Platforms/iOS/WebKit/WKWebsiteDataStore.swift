
@available(iOS 9.0, *)
class WKWebsiteDataStore : Object {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistent() -> WKWebsiteDataStore
  var isPersistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecords(ofTypes dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeData(ofTypes dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeData(ofTypes websiteDataTypes: Set<String>, modifiedSince date: Date, completionHandler: () -> Void)
}