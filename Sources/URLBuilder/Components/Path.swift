//
//  Path.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

extension URLComponents {
    
    public struct Path: URLComponentProtocol {
        
        // MARK: - Nested types
        
        public typealias RawValue = String?
        
        // MARK: - Public properties
        
        public let rawValue: RawValue
        
        // MARK: - Public constants
        
        public static let empty = Path(rawValue: nil)
        
        // MARK: - Internal constants
        
        internal static let type: URLComponentType = .path
        
        // MARK: - Initialization
        
        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
        
    }
    
}
