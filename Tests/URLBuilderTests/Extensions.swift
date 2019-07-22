import Foundation

extension URLComponents.Scheme {
    static let test = URLComponents.Scheme(rawValue: Constants.testString)
}

extension URLComponents.User {
    static let test = URLComponents.User(rawValue: Constants.testString)
}

extension URLComponents.Password {
    static let test = URLComponents.Password(rawValue: Constants.testString)
}

extension URLComponents.Host {
    static let test = URLComponents.Host(rawValue: Constants.testString)
}

extension URLComponents.Port {
    static let test = URLComponents.Port(rawValue: Constants.testInt)
}

extension URLComponents.Path {
    static let test = URLComponents.Path(rawValue: Constants.testString)
}

extension URLComponents.Query {
    static let test = URLComponents.Query(rawValue: Constants.testQueryItem)
}

extension URLComponents.Fragment {
    static let test = URLComponents.Fragment(rawValue: Constants.testString)
}
