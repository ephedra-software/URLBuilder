//
//  SchemeFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol SchemeFunctionality {
    
    static func scheme(_ scheme: URLComponents.Scheme) -> URLBuilder
    static func scheme(_ value: URLComponents.Scheme.RawValue) -> URLBuilder
    static func scheme(from url: URL?) -> URLBuilder
    static func scheme(from urlComponents: URLComponents) -> URLBuilder
    
    func scheme(_ scheme: URLComponents.Scheme) -> URLBuilder
    func scheme(_ value: URLComponents.Scheme.RawValue) -> URLBuilder
    func scheme(from url: URL?) -> URLBuilder
    func scheme(from urlComponents: URLComponents) -> URLBuilder

}
