import XCTest
@testable import URLBuilder

final class URLBuilderPortFunctionalityTests: XCTestCase {
    
    // MARK: - Properties
    
    static var allTests = [
        ("testStaticAllocate", testStaticAllocate),
        ("testUpdateByComponent", testUpdateByComponent),
        ("testUpdateByCustomValue", testUpdateByCustomValue),
        ("testUpdateByURL", testUpdateByURL),
        ("testUpdateByURLComponents", testUpdateByURLComponents)
    ]
    
    // MARK: - Tests
    
    func testStaticAllocate() {
        XCTAssertTrue(
            URLBuilder().port(.test) !== URLBuilder.port(.test),
            "Something went wrong. Check the initialization in the URLBuilder by port component"
        )
        
        XCTAssertTrue(
            URLBuilder().port(custom: Constants.testInt) !== URLBuilder.port(custom: Constants.testInt),
            "Something went wrong. Check the initialization in the URLBuilder by port raw value"
        )
        
        XCTAssertTrue(
            URLBuilder().port(from: Constants.testURL) !== URLBuilder.port(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )
        
        XCTAssertTrue(
            URLBuilder().port(from: Constants.testURLComponents) !== URLBuilder.port(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }
    
    func testUpdateByComponent() {
        // given
        let expectedURLString = "//:\(URLComponents.Port.test.rawValue!)"
        
        // when
        let gotURLString = URLBuilder.port(.test).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByCustomValue() {
        // given
        let expectedURLString = "//:\(URLComponents.Port.test.rawValue!)"
        
        // when
        let gotURLString = URLBuilder.port(custom: Constants.testInt).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByURL() {
        // given
        let expectedPort = Constants.testInt
        
        // when
        let gotPort = URLBuilder.port(from: Constants.testURL).url?.port
        
        // then
        XCTAssertEqual(
            gotPort, expectedPort,
            "Expected: \(expectedPort), but got: \(gotPort ?? 0)"
        )
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedPort = Constants.testInt
        
        // when
        let gotPort = URLBuilder.port(from: Constants.testURLComponents).url?.port
        
        // then
        XCTAssertEqual(
            gotPort, expectedPort,
            "Expected: \(expectedPort), but got: \(gotPort ?? 0)"
        )
    }
    
}
