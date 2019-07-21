//
//  User.swift
//  URLBuilder
//
//  Created by Eric Basargin on 20.07.2019.
//

import Foundation

extension URLComponents {
    
    public struct User: URLComponentProtocol {
        
        // MARK: - Nested types
        
        public typealias RawValue = String
        
        // MARK: - Public properties
        
        public let rawValue: Self.RawValue
        
        // MARK: - Internal constants
        
        internal static let type: URLComponentType = .user
        
        // MARK: - Initialization
        
        public init(rawValue: Self.RawValue) {
            self.rawValue = rawValue
        }
        
    }
    
}
