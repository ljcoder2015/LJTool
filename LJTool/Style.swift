//
//  Style.swift
//  LJTool
//
//  Created by 雷军 on 2020/2/26.
//  Copyright © 2020 ljcoder. All rights reserved.
//

import UIKit

public enum Style {
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

public struct StyleBasic {
    // Color
    public static let cd_1 = UIColor.lj.color(0x000000)
    
    public static let cg_1 = UIColor.lj.color(0x1c2029)
    public static let cg_2 = UIColor.lj.color(0x666666)
    public static let cg_3 = UIColor.lj.color(0x999999)
    public static let cg_4 = UIColor.lj.color(0xcccccc)
    public static let cg_5 = UIColor.lj.color(0xdfdfdf)
    public static let cg_6 = UIColor.lj.color(0xF5F5F5)
    public static let cg_9 = UIColor.lj.color(0x1616A)
    public static let cg_11 = UIColor.lj.color(0x25252B)
    public static let cg_12 = UIColor.lj.color(0x333337)
    public static let cg_13 = UIColor.lj.color(0x333333)
    public static let cg_17 = UIColor.lj.color(0x424245)
    public static let cg_18 = UIColor.lj.color(0x1d1d21)
    public static let cg_19 = UIColor.lj.color(0xbbbbbb)
    
    public static let cp_1 = UIColor.lj.color(0x1d1965)
    
    public static let cr_1 = UIColor.lj.color(r: 255, g: 28, b: 28)
    public static let cr_2 = UIColor.lj.color(0xFA799C)
    
    public static let cb_1 = UIColor.lj.color(0x3296FA)
    public static let cb_2 = UIColor.lj.color(0x272d3c)
    public static let cb_3 = UIColor.lj.color(0x194579)
    
    public static let cgr_1 = UIColor.lj.color(0x1aad19)
    
    public static let cy_1 = UIColor.lj.color(0xf5b906)
    public static let cy_2 = UIColor.lj.color(r: 227, g: 184, b: 43)
    
    public static let cw_1 = UIColor.lj.color(0xffffff)
    
    // 间距
    public static let dim_1: CGFloat = 0
    public static let dim_2: CGFloat = 1
    public static let dim_3: CGFloat = 2
    public static let dim_4: CGFloat = 3
    public static let dim_5: CGFloat = 6
    public static let dim_6: CGFloat = 9
    public static let dim_7: CGFloat = 12
    public static let dim_8: CGFloat = 15
    public static let dim_9: CGFloat = 18
    
    // 导角
    public static let radius_large: CGFloat = 12
    public static let radius_medium: CGFloat = 6
    public static let radius_secondary_medium: CGFloat = 4
    public static let radius_small: CGFloat = 2
    public static let radius_angle: CGFloat = 0
    
    // 文字大小
    public static let font_size_big1: CGFloat = 18
    public static let font_size_big2: CGFloat = 17
    public static let font_size_big3: CGFloat = 16
    public static let font_size_meddle1: CGFloat = 15
    public static let font_size_meddle2: CGFloat = 14
}
