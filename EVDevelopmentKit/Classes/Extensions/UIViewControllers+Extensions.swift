import UIKit

public extension UIViewController {
  
  public var isFirstInStack : Bool {
    get {
      guard let indexInStack = indexInNavigationStack else {
        return false
      }
      
      return indexInStack == 0
    }
  }
  
  public var isPresented : Bool {
    get { return presentingViewController != nil }
  }
  
  public func backViewController() {
    let _ = navigationController?.popViewController(animated: true)
  }
  
  public func backToRootViewController() {
    let _ = navigationController?.popToRootViewController(animated: true)
  }
  
  public func dismissViewController() {
    navigationController?.dismiss(animated: true, completion: nil)
  }
  
  public func removeBackButtonText() {
    navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
  }
  
}

public extension UIViewController {
  
  public func hasNavigationController() -> Bool {
    return navigationController != nil
  }
  
  public var indexInNavigationStack: Int? {
    guard hasNavigationController() else {
      return nil
    }
    
    return navigationController!.viewControllers.index(of: self)
  }
  
}
