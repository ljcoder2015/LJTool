//
//  LJTool+UIColor.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import Foundation
import UIKit

extension UIColor: LJToolCompatible {
    
}

extension LJTool where Base: UIColor {
    
    public static func color(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: alpha)
    }
    
    public static func color(_ hex: Int, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: CGFloat(((hex & 0xff0000) >> 16))/255.0, green: CGFloat(((hex & 0xff00) >> 8))/255.0, blue: CGFloat(((hex & 0xff)))/255.0, alpha: alpha)
    }
}

public extension LJTool where Base: UIColor {
    static var primary: UIColor {
        dynamicColor(light: DesignToken.color_brand1_6, dark: DesignToken.color_brand1_6)
    }
    
    static var background: UIColor {
        dynamicColor(light: .white, dark: .black)
    }
    
    static var secondaryBackground: UIColor {
        dynamicColor(light: UIColor.lj.color(0xf1f2f8), dark: UIColor.lj.color(0x1D1B20))
    }
    
    static var tertiaryBackground: UIColor {
        dynamicColor(light: .white, dark: UIColor.lj.color(0x2C2C2E))
    }
    
    static var line: UIColor {
        dynamicColor(light: UIColor.lj.color(0xcdcdd7), dark: UIColor.lj.color(0x48484A))
    }
    
    static var primaryText: UIColor {
        dynamicColor(light: UIColor.lj.color(0x111236), dark: .white)
    }
    
    static var secondaryText: UIColor {
        dynamicColor(light: UIColor.lj.color(0x68697f), dark: UIColor.lj.color(0x8E8E93))
    }
    
    static var tertiaryText: UIColor {
        dynamicColor(light: UIColor.lj.color(0x8f90a0), dark: UIColor.lj.color(0x8E8E93))
    }
    
    static var quaternaryText: UIColor {
        dynamicColor(light: UIColor.lj.color(0xb2b2bf), dark: UIColor.lj.color(0x8E8E93))
    }

    static private func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        return UIColor { $0.userInterfaceStyle == .dark ? dark : light }
    }
}
