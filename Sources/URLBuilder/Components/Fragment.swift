//
//  Fragment.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

extension URLComponents {
    
    public struct Fragment: URLComponentProtocol {
        
        // MARK: - Nested types
        
        public typealias RawValue = String
        
        // MARK: - Public properties
        
        public let rawValue: RawValue
        
        // MARK: - Internal constants
        
        internal static let type: URLComponentType = .fragment
        
        // MARK: - Initialization
        
        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
        
    }
    
}
