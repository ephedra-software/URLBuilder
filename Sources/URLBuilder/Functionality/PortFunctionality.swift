//
//  PortFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol PortFunctionality {
    
    static func port(_ port: URLComponents.Port) -> URLBuilder
    static func port(custom value: URLComponents.Port.RawValue) -> URLBuilder
    static func port(from url: URL?) -> URLBuilder
    static func port(from urlComponents: URLComponents?) -> URLBuilder

    func port(_ port: URLComponents.Port) -> URLBuilder
    func port(custom value: URLComponents.Port.RawValue) -> URLBuilder
    func port(from url: URL?) -> URLBuilder
    func port(from urlComponents: URLComponents?) -> URLBuilder
    
}
