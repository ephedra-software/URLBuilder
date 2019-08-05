@testable import URLBuilder
import XCTest

final class URLBuilderHostFunctionalityTests: XCTestCase {
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
            URLBuilder().host(.test) !== URLBuilder.host(.test),
            "Something went wrong. Check the initialization in the URLBuilder by host component"
        )

        XCTAssertTrue(
            URLBuilder().host(custom: Constants.testString) !== URLBuilder.host(custom: Constants.testString),
            "Something went wrong. Check the initialization in the URLBuilder by host raw value"
        )

        XCTAssertTrue(
            URLBuilder().host(from: Constants.testURL) !== URLBuilder.host(from: Constants.testURL),
            "Something went wrong. Check the initialization in the URLBuilder by URL"
        )

        XCTAssertTrue(
            URLBuilder().host(from: Constants.testURLComponents) !== URLBuilder.host(from: Constants.testURLComponents),
            "Something went wrong. Check the initialization in the URLBuilder by URLComponents"
        )
    }

    func testUpdateByComponent() {
        // given
        let expectedURLString = "//" + URLComponents.Host.test.rawValue!

        // when
        let gotURLString = URLBuilder.host(.test).string

        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }

    func testUpdateByCustomValue() {
        // given
        let expectedURLString = "//" + URLComponents.Host.test.rawValue!

        // when
        let gotURLString = URLBuilder.host(custom: Constants.testString).string

        // then
        XCTAssertEqual(gotURLString, expectedURLString)
    }

    func testUpdateByURL() {
        // given
        let expectedHost = Constants.testURL?.host ?? ""

        // when
        let gotHost = URLBuilder.host(from: Constants.testURL).url?.host

        // then
        XCTAssertEqual(gotHost, expectedHost)
    }

    func testUpdateByURLComponents() {
        // given
        let expectedHost = Constants.testURLComponents?.host ?? ""

        // when
        let gotHost = URLBuilder
            .host(from: Constants.testURLComponents)
            .urlComponents
            .host

        // then
        XCTAssertEqual(gotHost, expectedHost)
    }
}
