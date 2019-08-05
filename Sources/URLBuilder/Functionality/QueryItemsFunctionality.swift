//
//  QueryItemsFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 04.08.2019.
//

import Foundation

public protocol QueryItemsFunctionality {
    
    static func queryItems(_ items: URLComponents.QueryItems) -> URLBuilder
    static func queryItems(custom value: URLComponents.QueryItems.RawValue) -> URLBuilder
    static func queryItems(from urlComponents: URLComponents?) -> URLBuilder
    static func query(items: URLComponents.Query.Item...) -> URLBuilder
    static func query(items: [URLComponents.Query.Item]) -> URLBuilder

    func queryItems(_ items: URLComponents.QueryItems) -> URLBuilder
    func queryItems(custom value: URLComponents.QueryItems.RawValue) -> URLBuilder
    func queryItems(from urlComponents: URLComponents?) -> URLBuilder
    func query(items: URLComponents.Query.Item...) -> URLBuilder
    func query(items: [URLComponents.Query.Item]) -> URLBuilder
    
}
