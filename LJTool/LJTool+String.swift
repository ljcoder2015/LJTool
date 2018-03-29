//
//  LJTool+String.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import Foundation
import UIKit

extension String: LJToolCompatible {
    
}

extension LJTool where Base == String {
    

    /// 字符串长度
    var length: Int {
        return base.count
    }
    
    /// 匹配正则表达式
    ///
    /// - Parameter regExp: 正则表达式
    /// - Returns: 是否匹配
    public func matchingRegExp(_ regExp: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regExp)
        return predicate.evaluate(with: base)
    }
    
    // 保留两位小数，是否为价格
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
    
    // 根据字体计算size
    public func size(drawIn size: CGSize, font: UIFont, options: NSStringDrawingOptions = .usesLineFragmentOrigin) -> CGSize {
        let bounds = NSString(string: base).boundingRect(with: size, options: options, attributes: [NSAttributedStringKey.font: font], context: nil)
        return bounds.size
    }
}

