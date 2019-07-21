//
//  Scheme.swift
//  URLBuilder
//
//  Created by Eric Basargin on 20.07.2019.
//

import Foundation

extension URLComponents {
    
    public struct Scheme: URLComponentProtocol {
        
        // MARK: - Nested types
        
        public typealias RawValue = String
        
        // MARK: - Public properties
        
        public let rawValue: Self.RawValue
        
        // MARK: - Public constants
        
        public static let http = Scheme(rawValue: "http")
        public static let https = Scheme(rawValue: "https")
        public static let ws = Scheme(rawValue: "ws")
        public static let wss = Scheme(rawValue: "wss")
        public static let ssh = Scheme(rawValue: "ssh")
        public static let tel = Scheme(rawValue: "tel")
        
        // MARK: - Internal constants
        
        internal static let type: URLComponentType = .scheme
        
        // MARK: - Initialization
        
        public init(rawValue: Self.RawValue) {
            self.rawValue = rawValue
        }
        
    }
    
}
