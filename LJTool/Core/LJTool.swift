//
//  LJTool.swift
//  LovedEveryMonth
//
//  Created by ljcoder on 2017/6/23.
//  Copyright © 2017年 shanglv. All rights reserved.
//

import Foundation

public struct LJTool<Base> {
    
    let base: Base
    
    init(_ base: Base) {
        self.base = base
    }
}

public protocol LJToolCompatible {
    associatedtype CompatibleType
    
    static var lj: LJTool<CompatibleType>.Type { set get }
    
    var lj: LJTool<CompatibleType> { set get }
}

public extension LJToolCompatible {
    /// LJTool extensions.
    static var lj: LJTool<Self>.Type {
        get {
            return LJTool<Self>.self
        }
        set {
            // this enables using LJTool to "mutate" base type
        }
    }
    
    var lj: LJTool<Self> {
        get {
            return LJTool(self)
        }
        set {
            // this enables using LJTool to "mutate" base object
        }
    }
}

