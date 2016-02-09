
@available(iOS 9.0, *)
class GKState : Object {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(stateClass: AnyClass) -> Bool
  func didEnter(withPreviousState previousState: GKState?)
  func updateWithDeltaTime(seconds: TimeInterval)
  func willExit(withNextState nextState: GKState)
}