import XCTest
@testable import URLBuilder

final class URLBuilderSchemeFunctionalityTests: XCTestCase {
    
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
            URLBuilder().scheme(.test) !== URLBuilder.scheme(.test),
            "Something went wrong. Check the initialization in the URLBuilder by scheme component"
        )
        
        XCTAssertTrue(
            URLBuilder().scheme(custom: Constants.testString) !== URLBuilder.scheme(custom: Constants.testString),
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
        // given
        let expectedURLString = URLComponents.Scheme.https.rawValue! + ":"
        
        // when
        let gotURLString = URLBuilder.scheme(.https).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByCustomValue() {
        // given
        let expectedURLString = URLComponents.Scheme.https.rawValue! + ":"
        
        // when
        let gotURLString = URLBuilder.scheme(custom: "https").string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByURL() {
        // given
        let expectedURLString = Constants.testURL?.scheme
        
        // when
        let gotURLString = URLBuilder.scheme(from: Constants.testURL).url?.scheme
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString ?? "nil"), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedURLString = Constants.testURLComponents?.scheme
        
        // when
        let gotURLString = URLBuilder.scheme(from: Constants.testURLComponents).url?.scheme
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString ?? "nil"), but got: \(gotURLString ?? "nil")"
        )
    }

}
