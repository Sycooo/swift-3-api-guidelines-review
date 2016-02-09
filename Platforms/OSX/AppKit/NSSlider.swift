
class NSSlider : NSControl, NSAccessibilitySlider {
  @available(OSX 10.10, *)
  var sliderType: NSSliderType
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var knobThickness: CGFloat { get }
  var vertical: Int { get }
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  func accessibilityLabel() -> String?
  func accessibilityValue() -> AnyObject?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
}
extension NSSlider {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValue(at index: Int) -> Double
  func rectOfTickMark(at index: Int) -> Rect
  func indexOfTickMark(at point: Point) -> Int
  func closestTickMarkValue(toValue value: Double) -> Double
}