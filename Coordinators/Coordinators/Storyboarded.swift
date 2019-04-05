
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Force wrap is ok, because ViewController class name must match Storyboard id
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
