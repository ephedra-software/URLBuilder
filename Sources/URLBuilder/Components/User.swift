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

        public typealias RawValue = String?

        // MARK: - Public properties

        public let rawValue: RawValue

        // MARK: - Public constants

        public static let empty = User(rawValue: nil)

        // MARK: - Internal constants

        internal static let type: URLComponentType = .user

        // MARK: - Initialization

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
    }
}
