//
//  PasswordFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol PasswordFunctionality {
    static func password(_ password: URLComponents.Password) -> URLBuilder
    static func password(custom value: URLComponents.Password.RawValue) -> URLBuilder
    static func password(from url: URL?) -> URLBuilder
    static func password(from urlComponents: URLComponents?) -> URLBuilder

    func password(_ password: URLComponents.Password) -> URLBuilder
    func password(custom value: URLComponents.Password.RawValue) -> URLBuilder
    func password(from url: URL?) -> URLBuilder
    func password(from urlComponents: URLComponents?) -> URLBuilder
}
