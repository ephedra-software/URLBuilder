//
//  URLComponentType.swift
//  URLBuilder
//
//  Created by Eric Basargin on 20.07.2019.
//

import Foundation

internal enum URLComponentType {
    case scheme
    case user
    case password
    case host
    case port
    case path
    case query
    case fragment
}
