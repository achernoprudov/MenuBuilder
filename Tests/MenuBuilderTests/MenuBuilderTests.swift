import XCTest
@testable import MenuBuilder

final class MenuBuilderTests: XCTestCase {
    func test_buildMenu_withActions() {
        let menu = UIMenu {
            UIAction("Foo", icon: "eye") { _ in }
            UIAction("Bar", icon: "eye") { _ in }
        }
        
        XCTAssertEqual(menu.children[0].title, "Foo")
        XCTAssertEqual(menu.children[1].title, "Bar")
    }
}
