//
//  FragmentFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol FragmentFunctionality {
    static func fragment(_ fragment: URLComponents.Fragment) -> URLBuilder
    static func fragment(custom value: URLComponents.Fragment.RawValue) -> URLBuilder
    static func fragment(from url: URL?) -> URLBuilder
    static func fragment(from urlComponents: URLComponents?) -> URLBuilder

    func fragment(_ fragment: URLComponents.Fragment) -> URLBuilder
    func fragment(custom value: URLComponents.Fragment.RawValue) -> URLBuilder
    func fragment(from url: URL?) -> URLBuilder
    func fragment(from urlComponents: URLComponents?) -> URLBuilder
}
