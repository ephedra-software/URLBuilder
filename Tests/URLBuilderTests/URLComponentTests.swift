import XCTest
@testable import URLBuilder

final class URLComponentTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(Scheme.ssh.rawValue, "ssh")
    }
    
    static var allTests = [
        ("testExample", testExample),
    ]
}
