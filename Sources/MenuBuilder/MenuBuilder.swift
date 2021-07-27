import UIKit

extension UIMenu {
    convenience init(
        title: String = "",
        image: UIImage? = nil,
        identifier: UIMenu.Identifier? = nil,
        options: UIMenu.Options = [],
        @MenuElementsBuilder builder: () -> [UIMenuElement]
    ) {
        self.init(
            title: title,
            image: image,
            identifier: identifier,
            options: options,
            children: builder()
        )
    }
}
