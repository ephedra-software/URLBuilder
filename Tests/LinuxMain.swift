import XCTest

import URLBuilderTests

var tests = [XCTestCaseEntry]()
tests += URLBuilderTests.allTests()
tests += URLComponentsTests.allTests()
XCTMain(tests)
