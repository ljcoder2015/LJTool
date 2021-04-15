//
//  DesignToken.swift
//  dreamCatcher
//
//  Created by 雷军 on 2020/3/9.
//  Copyright © 2020 ljcoder. All rights reserved.
//

import UIKit

public struct DesignToken {
    // Color
    public static let cd_1 = UIColor.lj.color(0x000000)
    
    public static let cg_1 = UIColor.lj.color(0x1c2029)
    public static let cg_2 = UIColor.lj.color(0x666666)
    public static let cg_3 = UIColor.lj.color(0x999999)
    public static let cg_4 = UIColor.lj.color(0xcccccc)
    public static let cg_5 = UIColor.lj.color(0xdfdfdf)
    public static let cg_6 = UIColor.lj.color(0xF5F5F5)
    public static let cg_9 = UIColor.lj.color(0x16161A)
    public static let cg_11 = UIColor.lj.color(0x25252B)
    public static let cg_12 = UIColor.lj.color(0x333337)
    public static let cg_13 = UIColor.lj.color(0x333333)
    public static let cg_17 = UIColor.lj.color(0x424245)
    public static let cg_18 = UIColor.lj.color(0x1d1d21)
    public static let cg_19 = UIColor.lj.color(0xbbbbbb)
    
    public static let cp_1 = UIColor.lj.color(0x1d1965)
    
    public static let cr_1 = UIColor.lj.color(r: 255, g: 28, b: 28)
    public static let cr_2 = UIColor.lj.color(0xFA799C)
    public static let cr_3 = UIColor.lj.color(0xE91E63)
    public static let cr_4 = UIColor.lj.color(0xFA5151)
    
    public static let cb_1 = UIColor.lj.color(0x3296FA)
    public static let cb_2 = UIColor.lj.color(0x272d3c)
    public static let cb_3 = UIColor.lj.color(0x194579)
    public static let cb_4 = UIColor.lj.color(0x0091ea)
    public static let cb_5 = UIColor.lj.color(0x10AEFF)
    
    public static let cgr_1 = UIColor.lj.color(0x1aad19)
    public static let cgr_2 = UIColor.lj.color(0x4CAF50)
    public static let cgr_3 = UIColor.lj.color(r: 109, g: 191, b: 102)
    
    public static let cy_1 = UIColor.lj.color(0xf5b906)
    public static let cy_2 = UIColor.lj.color(r: 227, g: 184, b: 43)
    public static let cy_3 = UIColor.lj.color(0xffd600)
    public static let cy_4 = UIColor.lj.color(0xFFC300)
    
    public static let cw_1 = UIColor.lj.color(0xffffff)
    
    public static let color_green_1: UIColor = UIColor.lj.color(0xDFF9CD)
    
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

// MARK: UI配色
public extension DesignToken {
    // 品牌色
    static let color_brand1_1 = UIColor.lj.color(0xEEF3F9)
    static let color_brand1_7 = UIColor.lj.color(0xFF8126)  // 橙色
//    public static let color_brand1_6 = UIColor.lj.color(r: 99, g: 174, b: 232)  // 蓝色
    static let color_brand1_6 = UIColor.lj.color(0xFE6A6D)  // 红色
//    public static let color_brand1_6 = UIColor.lj.color(r: 108, g: 192, b: 102) // 微信绿
    static let color_brand1_9 = UIColor.lj.color(0x3E71F7)
    
    // 主题文字色
    static let color_text_1 = UIColor.lj.color(0xffffff)
    // 分割线颜色
    static let color_line_1 = UIColor.lj.color(0xeeeeee)
}

// MARK: 莫兰迪色
extension DesignToken {
    /// 0xc1cbd7
    public static let color_Morandi_1: UIColor = UIColor.lj.color(r: 233, g: 241, b: 230, alpha: 1)
    /// 0xe0e5df
    public static let color_Morandi_2: UIColor = UIColor.lj.color(0xe0e5df)
    /// 0x9ca8b8
    public static let color_Morandi_3: UIColor = UIColor.lj.color(r: 234, g: 234, b: 234, alpha: 1)
    /// 0xececea
    public static let color_Morandi_4: UIColor = UIColor.lj.color(0xececea)
    /// 0xfffaf4
    public static let color_Morandi_5: UIColor = UIColor.lj.color(r: 254, g: 248, b: 207, alpha: 1)
    /// 0xfdf9ee
    public static let color_Morandi_6: UIColor = UIColor.lj.color(0xfdf9ee)
    /// 0xd3d4cc
    public static let color_Morandi_7: UIColor = UIColor.lj.color(r: 237, g: 237, b: 254, alpha: 1)
    /// 0xead0d1
    public static let color_Morandi_8: UIColor = UIColor.lj.color(r: 251, g: 224, b: 223, alpha: 1)
    /// 0xfaead3
    public static let color_Morandi_9: UIColor = UIColor.lj.color(0xfaead3)
    /// 0xf0ebe5
    public static let color_Morandi_10: UIColor = UIColor.lj.color(0xf0ebe5)
}
