//
//  TypeCorrectly.swift
//  URLBuilderTests
//
//  Created by Eric Basargin on 22.07.2019.
//

import Foundation

struct TypeCorrectly<ExplicitType> {
    private init() {}
    
    static func compare(with object: ExplicitType) -> Bool {
        return true
    }
    
    static func compare<T>(with object: T) -> Bool {
        return false
    }
}
