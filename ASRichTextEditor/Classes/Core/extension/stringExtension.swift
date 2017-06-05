//
//  stringExtension.swift
//  Pods
//
//  Created by zkhCreator on 04/06/2017.
//
//

import Foundation

extension String {
    public func toURL() -> URL? {
        return URL.init(string: self)
    }
}
