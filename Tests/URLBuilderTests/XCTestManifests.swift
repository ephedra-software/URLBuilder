import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(URLBuilderTests.allTests),
        testCase(URLComponentsTests.allTests)
    ]
}
#endif
