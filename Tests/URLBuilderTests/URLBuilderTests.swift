import XCTest
@testable import URLBuilder

final class URLBuilderTests: XCTestCase {
    
    // MARK: - Nested types
    
    private enum Constants {
        static let testURL = URL(string: "http://localhost:4000")
    }
    
    // MARK: - Properties
    
    static var allTests = [
        ("testURLBuilderCorrectly", testURLBuilderCorrectly),
        ("testSchemeFunctionality", testSchemeFunctionality),
        ("testUserFunctionality", testUserFunctionality),
        ("testPasswordFunctionality", testPasswordFunctionality),
        ("testHostFunctionality", testHostFunctionality),
        ("testPortFunctionality", testPortFunctionality),
        ("testPathFunctionality", testPathFunctionality),
        ("testQueryFunctionality", testQueryFunctionality),
        ("testFragmentFunctionality", testFragmentFunctionality)
    ]
    
    // MARK: - Correctness tests
    
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
    
    // MARK: - Functionality tests
    
    func testSchemeFunctionality() {
        XCTFail("No implementation")
    }
    
    func testUserFunctionality() {
        XCTFail("No implementation")
    }
    
    func testPasswordFunctionality() {
        XCTFail("No implementation")
    }
    
    func testHostFunctionality() {
        XCTFail("No implementation")
    }
    
    func testPortFunctionality() {
        XCTFail("No implementation")
    }
    
    func testPathFunctionality() {
        XCTFail("No implementation")
    }
    
    func testQueryFunctionality() {
        XCTFail("No implementation")
    }
    
    func testFragmentFunctionality() {
        XCTFail("No implementation")
    }
    
}
