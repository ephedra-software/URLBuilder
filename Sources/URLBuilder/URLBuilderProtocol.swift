//
//  URLBuilderProtocol.swift
//  URLBuilder
//
//  Created by Eric Basargin on 21.07.2019.
//

import Foundation

public protocol URLBuilderProtocol: class {

    var url: URL? { get }
    
    @available(OSX 10.10, iOS 8.0, *)
    var string: String? { get }
    
    func url(relativeTo base: URL?) -> URL?
    
}
