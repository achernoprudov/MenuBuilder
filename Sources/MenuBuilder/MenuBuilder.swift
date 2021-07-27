import UIKit

extension UIMenu {
    convenience init(@MenuElementsBuilder builder: () -> [UIMenuElement]) {
        let children = builder()
        self.init(children: children)
    }
}
