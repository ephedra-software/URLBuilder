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

        public typealias RawValue = String?
        public typealias Item = (name: String, value: String?)

        // MARK: - Public properties

        public let rawValue: RawValue

        // MARK: - Public constants

        public static let empty = Query(rawValue: nil)

        // MARK: - Internal constants

        internal static let type: URLComponentType = .query

        // MARK: - Initialization

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
    }
}
