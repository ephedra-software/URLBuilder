//
//  UserFunctionality.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol UserFunctionality {
    static func user(_ user: URLComponents.User) -> URLBuilder
    static func user(custom value: URLComponents.User.RawValue) -> URLBuilder
    static func user(from url: URL?) -> URLBuilder
    static func user(from urlComponents: URLComponents?) -> URLBuilder

    func user(_ user: URLComponents.User) -> URLBuilder
    func user(custom value: URLComponents.User.RawValue) -> URLBuilder
    func user(from url: URL?) -> URLBuilder
    func user(from urlComponents: URLComponents?) -> URLBuilder
}
