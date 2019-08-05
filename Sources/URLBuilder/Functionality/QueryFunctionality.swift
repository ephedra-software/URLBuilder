//
//  QueryFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol QueryFunctionality {
    
    static func query(_ query: URLComponents.Query) -> URLBuilder
    static func query(custom value: URLComponents.Query.RawValue) -> URLBuilder
    static func query(from url: URL?) -> URLBuilder
    static func query(from urlComponents: URLComponents?) -> URLBuilder

    func query(_ query: URLComponents.Query) -> URLBuilder
    func query(custom value: URLComponents.Query.RawValue) -> URLBuilder
    func query(from url: URL?) -> URLBuilder
    func query(from urlComponents: URLComponents?) -> URLBuilder
    
}
