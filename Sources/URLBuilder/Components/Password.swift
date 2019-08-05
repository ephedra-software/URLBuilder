//
//  Password.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

extension URLComponents {
    public struct Password: URLComponentProtocol {
        // MARK: - Nested types

        public typealias RawValue = String?

        // MARK: - Public properties

        public let rawValue: RawValue

        // MARK: - Public constants

        public static let empty = Password(rawValue: nil)

        // MARK: - Internal constants

        internal static let type: URLComponentType = .password

        // MARK: - Initialization

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }
    }
}
