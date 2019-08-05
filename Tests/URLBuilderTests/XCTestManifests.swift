import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        return [
            testCase(URLBuilderTests.allTests),
            testCase(URLComponentsTests.allTests),
            testCase(URLBuilderSchemeFunctionalityTests.allTests),
            testCase(URLBuilderUserFunctionalityTests.allTests),
            testCase(URLBuilderPasswordFunctionalityTests.allTests),
            testCase(URLBuilderHostFunctionalityTests.allTests),
            testCase(URLBuilderPortFunctionalityTests.allTests),
            testCase(URLBuilderPathFunctionalityTests.allTests),
            testCase(URLBuilderQueryFunctionalityTests.allTests),
            testCase(URLBuilderQueryItemsFunctionalityTests.allTests),
            testCase(URLBuilderFragmentFunctionalityTests.allTests)
        ]
    }
#endif
