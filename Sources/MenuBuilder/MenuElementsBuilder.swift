import UIKit

@resultBuilder
public enum MenuElementsBuilder {
    
    public static func buildBlock(_ elements: [UIMenuElement]...) -> [UIMenuElement] {
        return elements.flatMap { $0 }
    }
    
    // MARK: - Expressions
    
    public static func buildExpression(_ element: UIMenuElement) -> [UIMenuElement] {
        return [element]
    }
    
    public static func buildExpression(_ expression: ()) -> [UIMenuElement] {
        return []
    }
    
    // MARK: - Conditionals
    
    static func buildOptional(_ component: [UIMenuElement]?) -> [UIMenuElement] {
        return component ?? []
    }
    
    public static func buildEither(first elements: [UIMenuElement]) -> [UIMenuElement] {
        return elements
    }
    
    public static func buildEither(second elements: [UIMenuElement]) -> [UIMenuElement] {
        return elements
    }
}
