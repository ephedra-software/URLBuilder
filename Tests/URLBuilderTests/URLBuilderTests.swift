import XCTest
@testable import URLBuilder

final class URLBuilderTests: XCTestCase {

    // MARK: - Properties
    
    static var allTests = [
        ("testURLBuilderCorrectly", testURLBuilderCorrectly)
    ]
    
    // MARK: - Tests
    
    func testURLBuilderCorrectly() {
        // when
        let urlBuilder = URLBuilder()
        
        // then
        XCTAssertTrue(
            TypeCorrectly<URLComponents>.compare(with: urlBuilder.urlComponents),
            "URLBuilder.urlComponents is not URLComponents"
        )
        
        XCTAssertTrue(
            TypeCorrectly<URL?>.compare(with: urlBuilder.url),
            "URLBuilder.url is not URL?"
        )
        
        XCTAssertTrue(
            TypeCorrectly<String?>.compare(with: urlBuilder.string),
            "URLBuilder.string is not String?"
        )
        
        XCTAssertTrue(
            TypeCorrectly<URL?>.compare(
                with: urlBuilder.url(relativeTo: Constants.testURL)
            ),
            "URLBuilder.url(relativeTo:) return is not URL?"
        )
    }
    
}
