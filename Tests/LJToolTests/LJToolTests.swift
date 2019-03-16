import XCTest
@testable import LJTool

final class LJToolTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LJTool().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
