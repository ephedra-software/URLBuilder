//
//  QueryItems.swift
//  URLBuilder
//
//  Created by Eric Basargin on 04.08.2019.
//

import Foundation

extension URLComponents {
    public struct QueryItems: URLComponentProtocol {
        // MARK: - Nested types

        public typealias RawValue = [URLQueryItem]?

        // MARK: - Public properties

        public let rawValue: RawValue

        // MARK: - Public constants

        public static let empty = QueryItems(rawValue: nil)

        // MARK: - Internal constants

        internal static let type: URLComponentType = .queryItems

        // MARK: - Initialization

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
    }
}
