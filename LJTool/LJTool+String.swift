//
//  LJTool+String.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import Foundation

extension String: LJToolCompatible {
    
}

extension LJTool where Base == String {
    
    /// 匹配正则表达式
    ///
    /// - Parameter regExp: 正则表达式
    /// - Returns: 是否匹配
    public func matchingRegExp(_ regExp: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regExp)
        return predicate.evaluate(with: base)
    }
    
    // 保留两位小数，
    var isPrice: Bool {
        return base.lj.matchingRegExp("^\\+?(?:[1-9]\\d*(?:\\.\\d{1,2})?|0\\.(?:\\d[1-9]|[1-9]\\d))$")
    }
    
    
    public func toDictionary() -> NSDictionary {
        
        let jsonData: Data = base.data(using: .utf8)!
        
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
        if dict != nil {
            return dict as! NSDictionary
        }
        return NSDictionary()
    }
}
