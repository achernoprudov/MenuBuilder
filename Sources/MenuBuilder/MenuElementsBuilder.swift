import UIKit

@resultBuilder
public enum MenuElementsBuilder {
    static func buildOptional(_ component: [UIMenuElement]?) -> [UIMenuElement] {
        return component ?? []
    }
    
    public static func buildExpression(_ element: UIMenuElement) -> [UIMenuElement] {
        return [element]
    }
    
    public static func buildExpression(_ expression: ()) -> [UIMenuElement] {
        return []
    }
    
    public static func buildBlock(_ elements: [UIMenuElement]...) -> [UIMenuElement] {
        return elements.flatMap { $0 }
    }
}
