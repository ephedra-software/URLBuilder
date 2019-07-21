//
//  Host.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public struct Host: URLComponentProtocol {
    
    // MARK: - Nested types
    
    public typealias RawValue = String
    
    // MARK: - Public properties
    
    public let rawValue: Self.RawValue
    
    // MARK: - Internal constants
    
    internal static let type: URLComponentType = .host
    
    // MARK: - Initialization
    
    public init(rawValue: Self.RawValue) {
        self.rawValue = rawValue
    }
    
}
