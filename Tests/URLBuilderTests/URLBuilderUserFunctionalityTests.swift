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
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByCustomValue() {
        // given
        let customValue = URLComponents.User.test.rawValue!
        let expectedURLString = "//" + customValue + "@"
        
        // when
        let gotURLString = URLBuilder.user(custom: customValue).string
        
        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByURL() {
        // given
        let expectedUser = Constants.testURL?.user ?? ""
        
        // when
        let gotUser = URLBuilder.user(from: Constants.testURL).url?.user
        
        // then
        XCTAssertEqual(gotUser, expectedUser)
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedUser = Constants.testURLComponents?.user ?? ""
        
        // when
        let gotUser = URLBuilder
            .user(from: Constants.testURLComponents)
            .urlComponents
            .user
        
        // then
        XCTAssertEqual(gotUser, expectedUser)
    }
    
}
