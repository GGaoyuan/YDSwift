//
//  WebImage.swift
//  YDSwift
//
//  Created by gaoyuan on 2021/7/5.
//

import UIKit

public struct WebImageWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol WebImageCompatible: AnyObject {}
extension WebImageCompatible {
    public var wi: WebImageWrapper<Self> {
        get { return WebImageWrapper(self) }
        set {}
    }
}


public protocol WebImageCompatibleValue {}
extension  WebImageCompatibleValue {
    public var wi: WebImageWrapper<Self> {
        get { return WebImageWrapper(self) }
        set {}
    }
}

extension UIImageView: WebImageCompatible {}


