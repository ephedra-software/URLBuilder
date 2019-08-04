import XCTest
@testable import URLBuilder

final class URLBuilderPathFunctionalityTests: XCTestCase {
    
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
            URLBuilder().path(.test) !== URLBuilder.path(.test),
            "Something went wrong. Check the initialization in the URLBuilder by path component"
        )
        
        XCTAssertTrue(
            URLBuilder().path(custom: Constants.testString) !== URLBuilder.path(custom: Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by path raw value"
        )
        
        XCTAssertTrue(
            URLBuilder().path(from: Constants.testURL) !== URLBuilder.path(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )
        
        XCTAssertTrue(
            URLBuilder().path(from: Constants.testURLComponents) !== URLBuilder.path(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }
    
    func testUpdateByComponent() {
        // given
        let expectedURLString = URLComponents.Path.test.rawValue
        
        // when
        let gotURLString = URLBuilder.path(.test).string
        
        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByCustomValue() {
        // given
        let expectedURLString = URLComponents.Path.test.rawValue
        
        // when
        let gotURLString = URLBuilder.path(custom: Constants.testString).string
        
        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByURL() {
        // given
        let expectedPath = Constants.testURL?.path ?? ""
        
        // when
        let gotPath = URLBuilder.path(from: Constants.testURL).url?.path
        
        // then
        XCTAssertEqual(gotPath, expectedPath)
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedPath = Constants.testURLComponents?.path ?? ""
        
        // when
        let gotPath = URLBuilder
            .path(from: Constants.testURLComponents)
            .urlComponents
            .path
        
        // then
        XCTAssertEqual(gotPath, expectedPath)
    }
    
}
