//
//  LJTool+Date.swift
//  LJTool
//
//  Created by 雷军 on 2018/3/29.
//  Copyright © 2018年 ljcoder. All rights reserved.
//

import Foundation

extension Date: LJToolCompatible {
    
}

extension LJTool where Base == Date {
    
    /// 获取当前时间
    ///
    /// - Parameter format: 时间格式
    /// - Returns: 返回指定时间格式字符串
    static func now(format: String = "yyyy-MM-dd") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: Date.init(timeIntervalSinceNow: 0))
    }
    
}
