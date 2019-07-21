//
//  Port.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

extension URLComponents {
    
    public struct Port: URLComponentProtocol {
        
        // MARK: - Nested types
        
        public typealias RawValue = Int
        
        // MARK: - Public properties
        
        public let rawValue: Self.RawValue
        
        // MARK: - Internal constants
        
        internal static let type: URLComponentType = .port
        
        // MARK: - Initialization
        
        public init(rawValue: Self.RawValue) {
            self.rawValue = rawValue
        }
        
    }
    
}
