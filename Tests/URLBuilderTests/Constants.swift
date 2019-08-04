import Foundation

enum Constants {
    static let testString = "Test"
    static let testInt = 8181
    static let testPassword = UUID().uuidString
    static let testQuery = "tag=networking&order=newest"
    static let testQueryItem = URLQueryItem(name: Constants.testString, value: nil)
    static let testStringURL = "https://john.doe:\(testPassword)@www.example.com:\(Constants.testInt)/forum/questions/?\(Constants.testQuery)#top"
    static let testURL = URL(string: Constants.testStringURL)
    static let testURLComponents = URLComponents(string: Constants.testStringURL)
}
