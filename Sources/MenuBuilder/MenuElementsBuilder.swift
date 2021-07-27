import UIKit

@resultBuilder
public enum MenuElementsBuilder {
    static func buildBlock(_ components: UIMenuElement...) -> [UIMenuElement] {
        components
    }
}
