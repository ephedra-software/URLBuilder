//
//  HostFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol HostFunctionality {
    
    static func host(_ host: URLComponents.Host) -> URLBuilder
    static func host(custom value: URLComponents.Host.RawValue) -> URLBuilder
    static func host(from url: URL?) -> URLBuilder
    static func host(from urlComponents: URLComponents?) -> URLBuilder

    func host(_ host: URLComponents.Host) -> URLBuilder
    func host(custom value: URLComponents.Host.RawValue) -> URLBuilder
    func host(from url: URL?) -> URLBuilder
    func host(from urlComponents: URLComponents?) -> URLBuilder
    
}
