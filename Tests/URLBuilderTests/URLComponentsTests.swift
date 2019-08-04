import XCTest
@testable import URLBuilder

final class URLComponentsTests: XCTestCase {
    
    // MARK: - Properties
    
    static var allTests = [
        ("testSchemeCorrectly", testSchemeCorrectly),
        ("testUserCorrectly", testUserCorrectly),
        ("testPasswordCorrectly", testPasswordCorrectly),
        ("testHostCorrectly", testHostCorrectly),
        ("testPortCorrectly", testPortCorrectly),
        ("testPathCorrectly", testPathCorrectly),
        ("testQueryCorrectly", testQueryCorrectly),
        ("testFragmentCorrectly", testFragmentCorrectly)
    ]
    
    // MARK: - Tests
    
    func testSchemeCorrectly() {
        XCTAssertTrue(URLComponents.Scheme.type == .scheme,
                      "URLComponents.Scheme.type is not .scheme")
        
        XCTAssertTrue(TypeCompare<URLComponents.Scheme.RawValue, String?>.bool,
                      "URLComponents.Scheme.RawValue is not String")
        
        XCTAssertEqual(URLComponents.Scheme.test.rawValue, Constants.testString,
                       "Something is wrong with extensibility URLComponents.Scheme")
    }
    
    func testUserCorrectly() {
        XCTAssertTrue(URLComponents.User.type == .user,
                      "User.type is not .user")
        
        XCTAssertTrue(TypeCompare<URLComponents.User.RawValue, String?>.bool,
                      "User.RawValue is not String")
        
        XCTAssertEqual(URLComponents.User.test.rawValue, Constants.testString,
                       "Something is wrong with extensibility URLComponents.User")
    }
    
    func testPasswordCorrectly() {
        XCTAssertTrue(URLComponents.Password.type == .password,
                      "Password.type is not .password")
        
        XCTAssertTrue(TypeCompare<URLComponents.Password.RawValue, String?>.bool,
                      "Password.RawValue is not String")
        
        XCTAssertEqual(URLComponents.Password.test.rawValue, Constants.testPassword,
                       "Something is wrong with extensibility URLComponents.Password")
    }
    
    func testHostCorrectly() {
        XCTAssertTrue(URLComponents.Host.type == .host,
                      "Host.type is not .host")
        
        XCTAssertTrue(TypeCompare<URLComponents.Host.RawValue, String?>.bool,
                      "Host.RawValue is not String")
        
        XCTAssertEqual(URLComponents.Host.test.rawValue, Constants.testString,
                       "Something is wrong with extensibility URLComponents.Host")
    }
    
    func testPortCorrectly() {
        XCTAssertTrue(URLComponents.Port.type == .port,
                      "Port.type is not .port")
        
        XCTAssertTrue(TypeCompare<URLComponents.Port.RawValue, Int?>.bool,
                      "Port.RawValue is not Int")
        
        XCTAssertEqual(URLComponents.Port.test.rawValue, Constants.testInt,
                       "Something is wrong with extensibility URLComponents.Port")
    }
    
    func testPathCorrectly() {
        XCTAssertTrue(URLComponents.Path.type == .path,
                      "Path.type is not .path")
        
        XCTAssertTrue(TypeCompare<URLComponents.Path.RawValue, String>.bool,
                      "Path.RawValue is not String")
        
        XCTAssertEqual(URLComponents.Path.test.rawValue, Constants.testString,
                       "Something is wrong with extensibility URLComponents.Path")
    }
    
    func testQueryCorrectly() {
        XCTAssertTrue(URLComponents.Query.type == .query,
                      "Query.type is not .query")
        
        XCTAssertTrue(TypeCompare<URLComponents.Query.RawValue, URLQueryItem?>.bool,
                      "Query.RawValue is not URLQueryItem")
        
        XCTAssertEqual(URLComponents.Query.test.rawValue, Constants.testQueryItem,
                       "Something is wrong with extensibility URLComponents.Query")
    }
    
    func testFragmentCorrectly() {
        XCTAssertTrue(URLComponents.Fragment.type == .fragment,
                      "Fragment.type is not .fragment")
        
        XCTAssertTrue(TypeCompare<URLComponents.Fragment.RawValue, String?>.bool,
                      "Fragment.RawValue is not String")
        
        XCTAssertEqual(URLComponents.Fragment.test.rawValue, Constants.testString,
                       "Something is wrong with extensibility URLComponents.Fragment")
    }
    
}
