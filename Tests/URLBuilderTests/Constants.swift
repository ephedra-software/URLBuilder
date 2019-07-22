import Foundation

enum Constants {
    static let testString = "Test"
    static let testInt = 8181
    static let testQueryItem = URLQueryItem(name: "test", value: nil)
    static let testURL = URL(string: "https://john.doe@www.example.com:123/forum/questions/?tag=networking&order=newest#top")
    static let testURLComponents = URLComponents(string: testURL!.absoluteString)!
}
