//
//  URLBuilder.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public class URLBuilder: URLBuilderProtocol {
    
    // MARK: - Public properties
    
    public var urlComponents: URLComponents = URLComponents()
    
    @inlinable
    public var url: URL? {
        return urlComponents.url
    }
    
    @available(OSX 10.10, iOS 8.0, *)
    @inlinable
    public var string: String? {
        return urlComponents.string
    }
    
    // MARK: - Public methods
    
    @inlinable
    public func url(relativeTo base: URL?) -> URL? {
        return urlComponents.url(relativeTo: base)
    }
    
    // MARK: - Initialization
    
    internal init() {}
    
}

// MARK: - Scheme functionality

extension URLBuilder: SchemeFunctionality {
    
    public static func scheme(_ scheme: URLComponents.Scheme) -> URLBuilder {
        return URLBuilder().scheme(scheme)
    }
    
    public static func scheme(custom value: URLComponents.Scheme.RawValue) -> URLBuilder {
        return URLBuilder().scheme(custom: value)
    }
    
    public static func scheme(from url: URL?) -> URLBuilder {
        return URLBuilder().scheme(from: url)
    }
    
    public static func scheme(from urlComponents: URLComponents?) -> URLBuilder {
        return URLBuilder().scheme(from: urlComponents)
    }
    
    public func scheme(_ scheme: URLComponents.Scheme) -> URLBuilder {
        urlComponents.scheme = scheme.rawValue
        return self
    }
    
    public func scheme(custom value: URLComponents.Scheme.RawValue) -> URLBuilder {
        urlComponents.scheme = value
        return self
    }
    
    public func scheme(from url: URL?) -> URLBuilder {
        urlComponents.scheme = url?.scheme
        return self
    }
    
    public func scheme(from urlComponents: URLComponents?) -> URLBuilder {
        self.urlComponents.scheme = urlComponents?.scheme
        return self
    }

}

// MARK: - User functionality

extension URLBuilder: UserFunctionality {
    
    public static func user(_ user: URLComponents.User) -> URLBuilder {
        return URLBuilder().user(user)
    }
    
    public static func user(custom value: URLComponents.User.RawValue) -> URLBuilder {
        return URLBuilder().user(custom: value)
    }
    
    public static func user(from url: URL?) -> URLBuilder {
        return URLBuilder().user(from: url)
    }
    
    public static func user(from urlComponents: URLComponents?) -> URLBuilder {
        return URLBuilder().user(from: urlComponents)
    }
    
    public func user(_ user: URLComponents.User) -> URLBuilder {
        urlComponents.user = user.rawValue
        return self
    }
    
    public func user(custom value: URLComponents.User.RawValue) -> URLBuilder {
        urlComponents.user = value
        return self
    }
    
    public func user(from url: URL?) -> URLBuilder {
        urlComponents.user = url?.user
        return self
    }
    
    public func user(from urlComponents: URLComponents?) -> URLBuilder {
        self.urlComponents.user = urlComponents?.user
        return self
    }
    
}

// MARK: - Password functionality

extension URLBuilder: PasswordFunctionality {
    
    public static func password(_ password: URLComponents.Password) -> URLBuilder {
        return URLBuilder().password(password)
    }
    
    public static func password(custom value: URLComponents.Password.RawValue) -> URLBuilder {
        return URLBuilder().password(custom: value)
    }
    
    public static func password(from url: URL?) -> URLBuilder {
        return URLBuilder().password(from: url)
    }
    
    public static func password(from urlComponents: URLComponents?) -> URLBuilder {
        return URLBuilder().password(from: urlComponents)
    }
    
    public func password(_ password: URLComponents.Password) -> URLBuilder {
        urlComponents.password = password.rawValue
        return self
    }
    
    public func password(custom value: URLComponents.Password.RawValue) -> URLBuilder {
        urlComponents.password = value
        return self
    }
    
    public func password(from url: URL?) -> URLBuilder {
        urlComponents.password = url?.password
        return self
    }
    
    public func password(from urlComponents: URLComponents?) -> URLBuilder {
        self.urlComponents.password = urlComponents?.password
        return self
    }
    
}

// MARK: - Host functionality

extension URLBuilder: HostFunctionality {
    
    public static func host(_ host: URLComponents.Host) -> URLBuilder {
        return URLBuilder().host(host)
    }
    
    public static func host(custom value: URLComponents.Host.RawValue) -> URLBuilder {
        return URLBuilder().host(custom: value)
    }
    
    public static func host(from url: URL?) -> URLBuilder {
        return URLBuilder().host(from: url)
    }
    
    public static func host(from urlComponents: URLComponents?) -> URLBuilder {
        return URLBuilder().host(from: urlComponents)
    }
    
    public func host(_ host: URLComponents.Host) -> URLBuilder {
        urlComponents.host = host.rawValue
        return self
    }
    
    public func host(custom value: URLComponents.Host.RawValue) -> URLBuilder {
        urlComponents.host = value
        return self
    }
    
    public func host(from url: URL?) -> URLBuilder {
        urlComponents.host = url?.host
        return self
    }
    
    public func host(from urlComponents: URLComponents?) -> URLBuilder {
        self.urlComponents.host = urlComponents?.host
        return self
    }
    
}

// MARK: - Port functionality

extension URLBuilder: PortFunctionality {
    
    public static func port(_ port: URLComponents.Port) -> URLBuilder {
        return URLBuilder().port(port)
    }
    
    public static func port(custom value: URLComponents.Port.RawValue) -> URLBuilder {
        return URLBuilder().port(custom: value)
    }
    
    public static func port(from url: URL?) -> URLBuilder {
        return URLBuilder().host(from: url)
    }
    
    public static func port(from urlComponents: URLComponents?) -> URLBuilder {
        return URLBuilder().password(from: urlComponents)
    }
    
    public func port(_ port: URLComponents.Port) -> URLBuilder {
        urlComponents.port = port.rawValue
        return self
    }
    
    public func port(custom value: URLComponents.Port.RawValue) -> URLBuilder {
        urlComponents.port = value
        return self
    }
    
    public func port(from url: URL?) -> URLBuilder {
        urlComponents.port = url?.port
        return self
    }
    
    public func port(from urlComponents: URLComponents?) -> URLBuilder {
        self.urlComponents.port = urlComponents?.port
        return self
    }
    
}

// MARK: - Path functionality

extension URLBuilder: PathFunctionality {
    
}

// MARK: - Query functionality

extension URLBuilder: QueryFunctionality {
    
}

// MARK: - Fragment functionality

extension URLBuilder: FragmentFunctionality {
    
//    public func fragment(_ fragment: URLComponents.Fragment) -> Self {
//        urlComponents.fragment = fragment.rawValue
//        return self
//    }

}
