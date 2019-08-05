//
//  PathFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol PathFunctionality {
    
    static func path(_ path: URLComponents.Path) -> URLBuilder
    static func path(custom value: URLComponents.Path.RawValue) -> URLBuilder
    static func path(from url: URL?) -> URLBuilder
    static func path(from urlComponents: URLComponents?) -> URLBuilder
    
    func path(_ path: URLComponents.Path) -> URLBuilder
    func path(custom value: URLComponents.Path.RawValue) -> URLBuilder
    func path(from url: URL?) -> URLBuilder
    func path(from urlComponents: URLComponents?) -> URLBuilder
    
}
