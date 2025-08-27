
import UIKit

extension UIView {
    func addSubview(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
