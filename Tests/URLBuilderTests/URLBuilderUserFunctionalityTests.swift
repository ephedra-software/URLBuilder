import XCTest
@testable import URLBuilder

final class URLBuilderUserFunctionalityTests: XCTestCase {
    
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
            URLBuilder().user(.test) !== URLBuilder.user(.test),
            "Something went wrong. Check the initialization in the URLBuilder by user component"
        )
        
        XCTAssertTrue(
            URLBuilder().user(custom: Constants.testString) !== URLBuilder.user(custom: Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by user raw value"
        )
        
        XCTAssertTrue(
            URLBuilder().user(from: Constants.testURL) !== URLBuilder.user(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )
        
        XCTAssertTrue(
            URLBuilder().user(from: Constants.testURLComponents) !== URLBuilder.user(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }
    
    func testUpdateByComponent() {
        // given
        let expectedURLString = "//" + URLComponents.User.test.rawValue! + "@"
        
        // when
        let gotURLString = URLBuilder.user(.test).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByCustomValue() {
        // given
        let customValue = URLComponents.User.test.rawValue!
        let expectedURLString = "//" + customValue + "@"
        
        // when
        let gotURLString = URLBuilder.user(custom: customValue).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByURL() {
        // given
        let expectedURLString = Constants.testURL?.user ?? ""
        
        // when
        let gotURLString = URLBuilder.user(from: Constants.testURL).url?.user
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString ?? "nil"), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedURLString = Constants.testURLComponents?.user ?? ""
        
        // when
        let gotURLString = URLBuilder.user(from: Constants.testURLComponents).url?.user
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString ?? "nil"), but got: \(gotURLString ?? "nil")"
        )
    }
    
}
