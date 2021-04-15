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
    
    /// 添加千分位的函数实现
    func addMicrometerLevel() -> String {
        let double = Double(base) ?? 0.00
        if base.isEmpty || double == 0 {
            return "0"
        } else {
            if double.truncatingRemainder(dividingBy: 1) == 0 { // 小数位为0
                let numberFormatter = NumberFormatter()
                numberFormatter.positiveFormat = ",###"
                let number = NSNumber(value: double)
                let string = numberFormatter.string(from: number) ?? "0"
                if double < 1 {
                    return "0\(string)"
                }
                return string
            } else {
                let numberFormatter = NumberFormatter()
                numberFormatter.positiveFormat = ",###.00"
                let number = NSNumber(value: double)
                let string = numberFormatter.string(from: number) ?? "0.00"
                if double < 1 {
                    return "0\(string)"
                }
                return string
            }
        }
    }
    
    /// 16进制字符串转10进制Int
    func radix16To10Int() -> Int {
        let str = base.uppercased()
         var sum = 0
         for i in str.utf8 {
             sum = sum * 16 + Int(i) - 48 // 0-9 从48开始
             if i >= 65 {                 // A-Z 从65开始，但有初始值10，所以应该是减去55
                 sum -= 7
             }
         }
         return sum
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
        let bounds = NSString(string: base).boundingRect(with: size, options: options, attributes: [NSAttributedString.Key.font: font], context: nil)
        return bounds.size
    }
}

