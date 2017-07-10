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
    
    public static var blue: UIColor {
        get {
            return UIColor.lj.color(0x0072cf)
        }
    }
    
    public static var tintBlue: UIColor {
        get {
            return UIColor.lj.color(r: 139, g: 190, b: 253)
        }
    }
    
    public static var deepBlue: UIColor {
        get {
            return UIColor.lj.color(0x6dcff6)
        }
    }
    
    public static var black: UIColor {
        get {
            return UIColor.lj.color(0x1e2223)
        }
    }
    
    public static var red: UIColor {
        get {
            return UIColor.lj.color(r: 255, g: 28, b: 28)
        }
    }
    
    public static var yellow: UIColor {
        get {
            return UIColor.lj.color(0xf5b906)
        }
    }
    
    public static var green: UIColor {
        get {
            return UIColor.lj.color(0x336633)
        }
    }
    
    public static var gray: UIColor {
        get {
            return UIColor.lj.color(0xe1e1e1)
        }
    }
    
    public static var gray333: UIColor {
        get {
            return UIColor.lj.color(0x333333)
        }
    }
    
    public static var gray666: UIColor {
        get {
           return UIColor.lj.color(0x666666)
        }
    }
    
    public static var gray999: UIColor {
        get {
            return UIColor.lj.color(0x999999)
        }
    }
    
    public static var background: UIColor {
        get {
            return UIColor.lj.color(0xeeeeee)
        }
    }
    
    public static var line: UIColor {
        get {
            return UIColor.lj.color(0xdfdfdf)
        }
    }
    
    public static var text: UIColor {
        get {
            return UIColor.lj.color(r: 63, g: 63, b: 63)
        }
    }
    
    public static var price: UIColor {
        get {
            return UIColor.lj.color(0xFA799C)
        }
    }

}
