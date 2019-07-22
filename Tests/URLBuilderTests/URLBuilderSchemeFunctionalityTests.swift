import XCTest
@testable import URLBuilder

final class URLBuilderSchemeFunctionalityTests: XCTestCase {
    
    // MARK: - Properties
    
    static var allTests = [
        ("testStaticAllocate", testStaticAllocate),
        ("testUpdateByComponent", testUpdateByComponent),
        ("testUpdateByDefaultValue", testUpdateByDefaultValue),
        ("testUpdateByURL", testUpdateByURL),
        ("testUpdateByURLComponents", testUpdateByURLComponents)
    ]
    
    // MARK: - Tests
    
    func testStaticAllocate() {
        XCTAssertTrue(
            URLBuilder().scheme(.test) !== URLBuilder.scheme(.test),
            "Something went wrong. Check the initialization in the URLBuilder by scheme component"
        )
        
        XCTAssertTrue(
            URLBuilder().scheme(Constants.testString) !== URLBuilder.scheme(Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by scheme raw value"
        )
        
        XCTAssertTrue(
            URLBuilder().scheme(from: Constants.testURL) !== URLBuilder.scheme(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )
        
        XCTAssertTrue(
            URLBuilder().scheme(from: Constants.testURLComponents) !== URLBuilder.scheme(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }
    
    func testUpdateByComponent() {
        XCTFail("No implementation")
    }
    
    func testUpdateByDefaultValue() {
        XCTFail("No implementation")
    }
    
    func testUpdateByURL() {
        XCTFail("No implementation")
    }
    
    func testUpdateByURLComponents() {
        XCTFail("No implementation")
    }
    
}
