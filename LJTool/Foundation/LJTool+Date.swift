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
    static func todayAndTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let today = formatter.string(from: Date())
        return today
    }
    
    /// 获取当前年月日
    static func today() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let today = formatter.string(from: Date())
        return today
    }
}
