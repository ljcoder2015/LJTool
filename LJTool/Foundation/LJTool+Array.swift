//
//  LJTool+Array.swift
//  LJTool
//
//  Created by 雷军 on 2021/4/15.
//  Copyright © 2021 ljcoder. All rights reserved.
//

import Foundation

extension Array: LJToolCompatible {
    
}

extension LJTool where Base == Array<Any> {
    func toJSON() -> String {
        var data: Data = Data()
        do {
            data = try JSONSerialization.data(withJSONObject: self, options: .init(rawValue: 0))
        } catch let error {
            print(error)
        }
        return String(data: data, encoding: .utf8) ?? ""
    }
}
