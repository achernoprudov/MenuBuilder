import UIKit

public extension UIAction {
    /// Builds `UIAction` with system icon
    ///
    /// - Parameters:
    ///   - title: action title
    ///   - systemIconName: system icon name (SF Symbols)
    ///   - handler: handler for action
    convenience init(
        _ title: String,
        icon systemIconName: String = "",
        handler: @escaping UIActionHandler
    )  {
        self.init(title: title, image: UIImage(systemName: systemIconName), handler: handler)
    }
}
