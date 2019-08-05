@testable import URLBuilder
import XCTest

final class URLBuilderFragmentFunctionalityTests: XCTestCase {
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
            URLBuilder().fragment(.test) !== URLBuilder.fragment(.test),
            "Something went wrong. Check the initialization in the URLBuilder by fragment component"
        )

        XCTAssertTrue(
            URLBuilder().fragment(custom: Constants.testString) !== URLBuilder.fragment(custom: Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by fragment raw value"
        )

        XCTAssertTrue(
            URLBuilder().fragment(from: Constants.testURL) !== URLBuilder.fragment(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )

        XCTAssertTrue(
            URLBuilder().fragment(from: Constants.testURLComponents) !== URLBuilder.fragment(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }

    func testUpdateByComponent() {
        // given
        let expectedURLString = "#" + URLComponents.Fragment.test.rawValue!

        // when
        let gotURLString = URLBuilder.fragment(.test).string

        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }

    func testUpdateByCustomValue() {
        // given
        let expectedURLString = "#" + URLComponents.Fragment.test.rawValue!

        // when
        let gotURLString = URLBuilder.fragment(custom: Constants.testString).string

        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }

    func testUpdateByURL() {
        // given
        let expectedFragment = Constants.testURL?.fragment ?? ""

        // when
        let gotFragment = URLBuilder.fragment(from: Constants.testURL).url?.fragment

        // then
        XCTAssertEqual(gotFragment, expectedFragment)
    }

    func testUpdateByURLComponents() {
        // given
        let expectedFragment = Constants.testURLComponents?.fragment ?? ""

        // when
        let gotFragment = URLBuilder
            .fragment(from: Constants.testURLComponents)
            .urlComponents
            .fragment

        // then
        XCTAssertEqual(gotFragment, expectedFragment)
    }
}
