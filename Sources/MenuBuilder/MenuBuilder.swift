import UIKit

public extension UIMenu {
    
    /// Builds UIMenu where `children` parameters builds in DSL format
    ///
    /// Example:
    /// ```
    /// UIMenu {
    ///     UIAction("Open") { ... }
    ///     UIMenu("Edit") {
    ///         UIAction("Duplicate") { ... }
    ///         UIAction("Delete") { ... }
    ///     }
    /// }
    /// ```
    convenience init(
        _ title: String = "",
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
