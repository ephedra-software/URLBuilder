import XCTest

import URLBuilderTests

var tests = [XCTestCaseEntry]()
tests += URLBuilderTests.allTests()
tests += URLComponentsTests.allTests()
tests += URLBuilderSchemeFunctionalityTests.allTests()
tests += URLBuilderUserFunctionalityTests.allTests()
tests += URLBuilderPasswordFunctionalityTests.allTests()
tests += URLBuilderHostFunctionalityTests.allTests()
tests += URLBuilderPortFunctionalityTests.allTests()
tests += URLBuilderPathFunctionalityTests.allTests()
tests += URLBuilderQueryFunctionalityTests.allTests()
tests += URLBuilderFragmentFunctionalityTests.allTests()
XCTMain(tests)
