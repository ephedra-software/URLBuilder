import XCTest

import URLBuilderTests

var tests = [XCTestCaseEntry]()
tests += URLBuilderTests.allTests()
tests += URLComponentsTests.allTests()
tests += URLBuilderSchemeFunctionalityTests.allTests()
XCTMain(tests)
