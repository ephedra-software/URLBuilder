//
//  Query.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

extension URLComponents {
    
    public struct Query: URLComponentProtocol {
        
        // MARK: - Nested types
        
        public typealias RawValue = URLQueryItem
        
        // MARK: - Public properties
        
        public let rawValue: RawValue
        
        // MARK: - Internal constants
        
        internal static let type: URLComponentType = .query
        
        // MARK: - Initialization
        
        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
        
        // MARK: - Public methods
        
        static func item(name: String, value: String?) -> Query {
            return Query(rawValue: URLQueryItem(name: name, value: value))
        }
        
    }
    
}