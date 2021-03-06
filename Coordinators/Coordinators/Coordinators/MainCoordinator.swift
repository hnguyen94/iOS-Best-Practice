import UIKit

class MainCoordinator: NSObject,Coordinator, UINavigationControllerDelegate {

    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.delegate = self
        navigationController.pushViewController(vc, animated: true)
    }

    func buySubscription() {
        let child = BuyCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start()
    }
    
    func createAccount() {
        let child = CreateAccountCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start()
    }


    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController,
                              didShow viewController: UIViewController,
                              animated: Bool) {
        // Read the view controller we’re moving from.
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        // Check whether our view controller array already contains that view controller.
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        
        // We're still here - it means we're popping the view controller,
        // so we can check whether it's a buy view controller
        if let buyViewController = fromViewController as? BuyViewController {
            // We're popping a buy view controller; end its coordinator
            childDidFinish(buyViewController.coordinator)
        }
        
        if let createAccountViewController = fromViewController as? CreateAccountViewController {
            childDidFinish(createAccountViewController.coordinator)
        }
    }

}
