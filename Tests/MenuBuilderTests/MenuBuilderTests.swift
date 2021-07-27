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
        XCTAssertEqual(menu.children[0].title, "Foo")
        XCTAssertEqual(menu.children[1].title, "Bar")
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
        
        XCTAssertEqual(submenu?.children[0].title, "Bar")
    }
}
