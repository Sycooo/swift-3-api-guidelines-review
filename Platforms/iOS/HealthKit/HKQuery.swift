
@available(iOS 8.0, *)
class HKQuery : Object {
  var sampleType: HKSampleType { get }
  var predicate: Predicate? { get }
}
@available(iOS 8.0, *)
struct HKQueryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: HKQueryOptions { get }
  static var strictStartDate: HKQueryOptions { get }
  static var strictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjects(withMetadataKey key: String) -> Predicate
  class func predicateForObjects(withMetadataKey key: String, allowedValues: [AnyObject]) -> Predicate
  class func predicateForObjects(withMetadataKey key: String, operatorType: PredicateOperatorType, value: AnyObject) -> Predicate
  class func predicateForObjects(from source: HKSource) -> Predicate
  class func predicateForObjects(from sources: Set<HKSource>) -> Predicate
  @available(iOS 9.0, *)
  class func predicateForObjects(from sourceRevisions: Set<HKSourceRevision>) -> Predicate
  @available(iOS 9.0, *)
  class func predicateForObjects(from devices: Set<HKDevice>) -> Predicate
  @available(iOS 9.0, *)
  class func predicateForObjects(withDeviceProperty key: String, allowedValues: Set<String>) -> Predicate
  class func predicateForObject(withUUID UUID: UUID) -> Predicate
  class func predicateForObjects(withUUIDs UUIDs: Set<UUID>) -> Predicate
  class func predicateForObjectsWithNoCorrelation() -> Predicate
  class func predicateForObjects(from workout: HKWorkout) -> Predicate
}
extension HKQuery {
  class func predicateForSamplesWithStart(startDate: Date?, end endDate: Date?, options: HKQueryOptions = []) -> Predicate
}
extension HKQuery {
  class func predicateForQuantitySamples(withOperatorType operatorType: PredicateOperatorType, quantity: HKQuantity) -> Predicate
}
extension HKQuery {
  class func predicateForCategorySamples(withOperatorType operatorType: PredicateOperatorType, value: Int) -> Predicate
}
extension HKQuery {
  class func predicateForWorkouts(withWorkoutActivityType workoutActivityType: HKWorkoutActivityType) -> Predicate
  class func predicateForWorkouts(withOperatorType operatorType: PredicateOperatorType, duration: TimeInterval) -> Predicate
  class func predicateForWorkouts(withOperatorType operatorType: PredicateOperatorType, totalEnergyBurned: HKQuantity) -> Predicate
  class func predicateForWorkouts(withOperatorType operatorType: PredicateOperatorType, totalDistance: HKQuantity) -> Predicate
}