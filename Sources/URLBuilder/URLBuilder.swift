//
//  URLBuilder.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public class URLBuilder: URLBuilderProtocol {
    
    // MARK: - Private properties
    
    private var urlComponents: URLComponents = URLComponents()
    
    // MARK: - Public properties
    
    public var url: URL? {
        return urlComponents.url
    }
    
    public var string: String? {
        return urlComponents.string
    }
    
    // MARK: - Public methods
    
    public func url(relativeTo base: URL?) -> URL? {
        return urlComponents.url
    }
    
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
    
}

// MARK: - Common functionality

extension URLBuilder: CommonFunctionality {
    
}
