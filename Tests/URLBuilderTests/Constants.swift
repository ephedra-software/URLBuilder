import Foundation

enum Constants {
    static let testString = "Test"
    static let testInt = 8181
    static let testQueryItem = URLQueryItem(name: "test", value: nil)
    static let testStringURL = "https://john.doe@www.example.com:123/forum/questions/?tag=networking&order=newest#top"
    static let testURL = URL(string: Constants.testStringURL)
    static let testURLComponents = URLComponents(string: Constants.testStringURL)
}
