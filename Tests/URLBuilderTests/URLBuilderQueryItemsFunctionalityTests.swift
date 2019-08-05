import XCTest
@testable import URLBuilder

final class URLBuilderQueryItemsFunctionalityTests: XCTestCase {
    
    // MARK: - Properties
    
    static var allTests = [
        ("testStaticAllocate", testStaticAllocate),
        ("testUpdateByComponent", testUpdateByComponent),
        ("testUpdateByCustomValue", testUpdateByCustomValue),
        ("testUpdateByVariadicPairs", testUpdateByPairs),
        ("testUpdateByURLComponents", testUpdateByURLComponents)
    ]
    
    // MARK: - Tests
    
    func testStaticAllocate() {
        XCTAssertTrue(
            URLBuilder().queryItems(.test) !== URLBuilder.queryItems(.test),
            "Something went wrong. Check the initialization in the URLBuilder by query items component"
        )
        
        XCTAssertTrue(
            URLBuilder().queryItems(custom: Constants.testQueryItems) !== URLBuilder.queryItems(custom: Constants.testQueryItems),
            "Something went wrong. Check the initialization in the URLBuilder by query items raw value"
        )
        
        XCTAssertTrue(
            URLBuilder().queryItems(from: Constants.testURLComponents) !== URLBuilder.queryItems(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
        
        XCTAssertTrue(
            URLBuilder().query(items: Constants.testQueryItemPairs.0, Constants.testQueryItemPairs.1) !==
                URLBuilder.query(items: Constants.testQueryItemPairs.0, Constants.testQueryItemPairs.1),
            "Something went wrong. Check the initialization in the URLBuilder by pairs"
        )
    }
    
    func testUpdateByComponent() {
        // given
        let expectedURLString = "?" + URLComponents.QueryItems.test.rawValue!.map { $0.description }.joined(separator: "&")
        
        // when
        let gotURLString = URLBuilder.queryItems(.test).string
        
        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByCustomValue() {
        // given
        let expectedURLString = "?" + URLComponents.QueryItems.test.rawValue!.map { $0.description }.joined(separator: "&")
        
        // when
        let gotURLString = URLBuilder.queryItems(custom: Constants.testQueryItems).string
        
        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByPairs() {
        // given
        let expectedURLString = "?" + URLComponents.QueryItems.test.rawValue!.map { $0.description }.joined(separator: "&")
        
        // when
        let gotURLString = URLBuilder.query(items: Constants.testQueryItemPairs.0, Constants.testQueryItemPairs.1).string
        
        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }
    
    func testUpdateByURLComponents() {
        // given
        let expectedQueryItems = Constants.testURLComponents?.queryItems ?? []
        
        // when
        let gotQueryItems = URLBuilder
            .queryItems(from: Constants.testURLComponents)
            .urlComponents
            .queryItems
        
        // then
        XCTAssertEqual(gotQueryItems, expectedQueryItems)
    }

}
