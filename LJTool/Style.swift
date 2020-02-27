//
//  Style.swift
//  LJTool
//
//  Created by 雷军 on 2020/2/26.
//  Copyright © 2020 ljcoder. All rights reserved.
//

import UIKit

enum Style {
    case light
    case dark
    
    static var currentStyle: Style {
        get {
            guard let current = UserDefaults.standard.object(forKey: "ljcoder.ljtool.currentStyle") as? String else {
                return .light
            }
            
            if current == "light" {
                return .light
            }
            else {
                return .dark
            }
        }
        set {
            switch newValue {
            case light:
                UserDefaults.standard.set("light", forKey: "ljcoder.ljtool.currentStyle")
            case dark:
                UserDefaults.standard.set("dark", forKey: "ljcoder.ljtool.currentStyle")
            }
        }
    }
}

struct StyleBasic {
    // Color
    static let cd_1 = UIColor.lj.color(0x000000)
    
    static let cg_1 = UIColor.lj.color(0x1c2029)
    static let cg_2 = UIColor.lj.color(0x666666)
    static let cg_3 = UIColor.lj.color(0x999999)
    static let cg_4 = UIColor.lj.color(0xcccccc)
    static let cg_5 = UIColor.lj.color(0xdfdfdf)
    static let cg_6 = UIColor.lj.color(0xF5F5F5)
    static let cg_9 = UIColor.lj.color(0x1616A)
    static let cg_11 = UIColor.lj.color(0x25252B)
    static let cg_12 = UIColor.lj.color(0x333337)
    static let cg_13 = UIColor.lj.color(0x333333)
    static let cg_17 = UIColor.lj.color(0x424245)
    static let cg_18 = UIColor.lj.color(0x1d1d21)
    static let cg_19 = UIColor.lj.color(0xbbbbbb)
    
    static let cp_1 = UIColor.lj.color(0x1d1965)
    
    static let cr_1 = UIColor.lj.color(r: 255, g: 28, b: 28)
    static let cr_2 = UIColor.lj.color(0xFA799C)
    
    static let cb_1 = UIColor.lj.color(0x3296FA)
    static let cb_2 = UIColor.lj.color(0x272d3c)
    static let cb_3 = UIColor.lj.color(0x194579)
    
    static let cgr_1 = UIColor.lj.color(0x1aad19)
    
    static let cy_1 = UIColor.lj.color(0xf5b906)
    static let cy_2 = UIColor.lj.color(r: 227, g: 184, b: 43)
    
    static let cw_1 = UIColor.lj.color(0xffffff)
    
    // 间距
    static let dim_1: CGFloat = 0
    static let dim_2: CGFloat = 1
    static let dim_3: CGFloat = 2
    static let dim_4: CGFloat = 3
    static let dim_5: CGFloat = 6
    static let dim_6: CGFloat = 9
    static let dim_7: CGFloat = 12
    static let dim_8: CGFloat = 15
    static let dim_9: CGFloat = 18
    
    // 导角
    static let radius_large: CGFloat = 12
    static let radius_medium: CGFloat = 6
    static let radius_secondary_medium: CGFloat = 4
    static let radius_small: CGFloat = 2
    static let radius_angle: CGFloat = 0
    
    // 文字大小
    static let font_size_big1: CGFloat = 18
    static let font_size_big2: CGFloat = 17
    static let font_size_big3: CGFloat = 16
    static let font_size_meddle1: CGFloat = 15
    static let font_size_meddle2: CGFloat = 14
}
