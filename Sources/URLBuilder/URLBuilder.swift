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
    
    public static func scheme(_ value: URLComponents.Scheme.RawValue) -> URLBuilder {
        return URLBuilder().scheme(value)
    }
    
    public static func scheme(from url: URL?) -> URLBuilder {
        return URLBuilder().scheme(from: url)
    }
    
    public static func scheme(from urlComponents: URLComponents) -> URLBuilder {
        return URLBuilder().scheme(from: urlComponents)
    }
    
    public func scheme(_ scheme: URLComponents.Scheme) -> URLBuilder {
        urlComponents.scheme = scheme.rawValue
        return self
    }
    
    public func scheme(_ value: URLComponents.Scheme.RawValue) -> URLBuilder {
        urlComponents.scheme = value
        return self
    }
    
    public func scheme(from url: URL?) -> URLBuilder {
        urlComponents.scheme = url?.scheme
        return self
    }
    
    public func scheme(from urlComponents: URLComponents) -> URLBuilder {
        self.urlComponents.scheme = urlComponents.scheme
        return self
    }

}

// MARK: - User functionality

extension URLBuilder: UserFunctionality {
    
}

// MARK: - Password functionality

extension URLBuilder: PasswordFunctionality {
    
}

// MARK: - Host functionality

extension URLBuilder: HostFunctionality {
    
}

// MARK: - Port functionality

extension URLBuilder: PortFunctionality {
    
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
