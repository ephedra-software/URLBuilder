//
//  URLComponentProtocol.swift
//  URLBuilder
//
//  Created by Eric Basargin on 20.07.2019.
//

import Foundation

internal protocol URLComponentProtocol: RawRepresentable {
    static var type: URLComponentType { get }
}
