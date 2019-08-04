import XCTest
@testable import URLBuilder

final class URLBuilderPasswordFunctionalityTests: XCTestCase {
    
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
            URLBuilder().password(.test) !== URLBuilder.password(.test),
            "Something went wrong. Check the initialization in the URLBuilder by password component"
        )
        
        XCTAssertTrue(
            URLBuilder().password(custom: Constants.testString) !== URLBuilder.password(custom: Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by password raw value"
        )
        
        XCTAssertTrue(
            URLBuilder().password(from: Constants.testURL) !== URLBuilder.password(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )
        
        XCTAssertTrue(
            URLBuilder().password(from: Constants.testURLComponents) !== URLBuilder.password(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }
    
    func testUpdateByComponent() {
        // given
        let expectedURLString = "//:" + URLComponents.Password.test.rawValue! + "@"
        
        // when
        let gotURLString = URLBuilder.password(.test).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByCustomValue() {
        // given
        let expectedURLString = "//:" + URLComponents.Password.test.rawValue! + "@"
        
        // when
        let gotURLString = URLBuilder.password(custom: Constants.testPassword).string
        
        // then
        XCTAssertEqual(
            gotURLString, expectedURLString,
            "Expected: \(expectedURLString), but got: \(gotURLString ?? "nil")"
        )
    }
    
    func testUpdateByURL() {
        // given
        let expectedPassword = Constants.testURL?.password ?? ""
        
        // when
        let gotPassword = URLBuilder.password(from: Constants.testURL).url?.password
        
        // then
        XCTAssertEqual(
            gotPassword, expectedPassword,
            "Expected: \(expectedPassword), but got: \(gotPassword ?? "nil")"
        )
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedPassword = Constants.testURLComponents?.password ?? ""
        
        // when
        let gotPassword = URLBuilder
            .password(from: Constants.testURLComponents)
            .urlComponents
            .password
        
        // then
        XCTAssertEqual(gotPassword, expectedPassword)
    }
    
}
