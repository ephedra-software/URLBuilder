import XCTest
@testable import URLBuilder

final class URLBuilderTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(Scheme.ssh.rawValue, "ssh")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
