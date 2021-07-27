import XCTest
@testable import MenuBuilder

final class MenuBuilderTests: XCTestCase {
    func test_buildMenu_withActions() {
        // actions
        let menu = UIMenu {
            UIAction("Foo", icon: "eye") { _ in }
            UIAction("Bar", icon: "eye") { _ in }
        }
        
        // assertions
        XCTAssertEqual(menu.children[safe: 0]?.title, "Foo")
        XCTAssertEqual(menu.children[safe: 1]?.title, "Bar")
    }
    
    func test_buildSubMenu_withTitle() {
        // actions
        let menu = UIMenu {
            UIMenu(title: "Submenu") {
                UIAction("Bar", icon: "eye") { _ in }
            }
        }
        
        // assertions
        let submenu = menu.children[0] as? UIMenu
        XCTAssertNotNil(submenu)
        
        XCTAssertEqual(submenu?.children[safe: 0]?.title, "Bar")
    }
    
    func test_buildMenu_ifConditional_isTrue() {
        // actions
        let addBarItem = true
        
        let menu = UIMenu {
            UIAction("Foo", icon: "eye") { _ in }
            if addBarItem {
                UIAction("Bar", icon: "eye") { _ in }
            }
        }
        
        // assertions
        XCTAssertNotNil(menu.children[safe: 0])
        XCTAssertNotNil(menu.children[safe: 1])
    }
    
    func test_buildMenu_ifConditional_isFalse() {
        // actions
        let addBarItem = false
        
        let menu = UIMenu {
            UIAction("Foo", icon: "eye") { _ in }
            if addBarItem {
                UIAction("Bar", icon: "eye") { _ in }
            }
        }
        
        // assertions
        XCTAssertNotNil(menu.children[safe: 0])
        XCTAssertNil(menu.children[safe: 1])
    }
    
    func test_buildMenu_ifElseConditional_ifBranch() {
        // actions
        let addFooItem = true
        
        let menu = UIMenu {
            
            if addFooItem {
                UIAction("Foo", icon: "eye") { _ in }
            } else {
                UIAction("Bar", icon: "eye") { _ in }
            }
        }
        
        // assertions
        XCTAssertEqual(menu.children[safe: 0]?.title, "Foo")
        XCTAssertEqual(menu.children.count, 1)
    }
    
    func test_buildMenu_ifElseConditional_elseBranch() {
        // actions
        let addFooItem = false
        
        let menu = UIMenu {
            
            if addFooItem {
                UIAction("Foo", icon: "eye") { _ in }
            } else {
                UIAction("Bar", icon: "eye") { _ in }
            }
        }
        
        // assertions
        XCTAssertEqual(menu.children[safe: 0]?.title, "Else")
        XCTAssertEqual(menu.children.count, 1)
    }
}
