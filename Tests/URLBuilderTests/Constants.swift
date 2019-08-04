import Foundation

enum Constants {
    static let testString = "Test"
    static let testInt = 8181
    static let testPassword = UUID().uuidString
    static let testQuery = "tag=networking&order=newest"
    static let testQueryItem = URLQueryItem(name: Constants.testString, value: nil)
    static let testQueryItemPairs = (("tag", Optional("networking")), ("order", Optional("newest")))
    static let testQueryItems = [
        URLQueryItem(name: "tag", value: "networking"),
        URLQueryItem(name: "order", value: "newest")
    ]
    static let testStringURL = "https://john.doe:\(testPassword)@www.example.com:\(Constants.testInt)/forum/questions/?\(Constants.testQuery)#top"
    static let testURL = URL(string: Constants.testStringURL)
    static let testURLComponents = URLComponents(string: Constants.testStringURL)
}
