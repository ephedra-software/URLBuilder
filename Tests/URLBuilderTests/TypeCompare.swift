//
//  TypeCompare.swift
//  URLBuilderTests
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

final class TypeCompare<Left, Right> {
    static var bool: Bool {
        false
    }

    private init() {}
}

extension TypeCompare where Left == Right {
    static var bool: Bool {
        true
    }
}
