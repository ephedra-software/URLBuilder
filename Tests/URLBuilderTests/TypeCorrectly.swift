//
//  TypeCorrectly.swift
//  URLBuilderTests
//
//  Created by Eric Basargin on 22.07.2019.
//

import Foundation

struct TypeCorrectly<ExplicitType> {
    private init() {}

    static func compare(with _: ExplicitType) -> Bool {
        return true
    }

    static func compare<T>(with _: T) -> Bool {
        return false
    }
}
