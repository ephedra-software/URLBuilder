@testable import URLBuilder
import XCTest

final class URLBuilderQueryFunctionalityTests: XCTestCase {
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
            URLBuilder().query(.test) !== URLBuilder.query(.test),
            "Something went wrong. Check the initialization in the URLBuilder by scheme component"
        )

        XCTAssertTrue(
            URLBuilder().query(custom: Constants.testString) !== URLBuilder.query(custom: Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by scheme raw value"
        )

        XCTAssertTrue(
            URLBuilder().query(from: Constants.testURL) !== URLBuilder.query(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )

        XCTAssertTrue(
            URLBuilder().query(from: Constants.testURLComponents) !== URLBuilder.query(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }

    func testUpdateByComponent() {
        // given
        let expectedURLString = "?" + URLComponents.Query.test.rawValue!

        // when
        let gotURLString = URLBuilder.query(.test).string

        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }

    func testUpdateByCustomValue() {
        // given
        let expectedURLString = "?" + URLComponents.Query.test.rawValue!

        // when
        let gotURLString = URLBuilder.query(custom: Constants.testQuery).string

        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }

    func testUpdateByURL() {
        // given
        let expectedScheme = Constants.testURL?.query ?? ""

        // when
        let gotScheme = URLBuilder.query(from: Constants.testURL).url?.query

        // then
        XCTAssertEqual(gotScheme, expectedScheme)
    }

    func testUpdateByURLComponents() {
        // given
        let expectedScheme = Constants.testURLComponents?.query ?? ""

        // when
        let gotScheme = URLBuilder
            .query(from: Constants.testURLComponents)
            .urlComponents
            .query

        // then
        XCTAssertEqual(gotScheme, expectedScheme)
    }
}
