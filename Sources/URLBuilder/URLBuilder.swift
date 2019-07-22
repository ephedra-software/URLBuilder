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

// MARK: - Common functionality

extension URLBuilder: CommonFunctionality {
    
}
