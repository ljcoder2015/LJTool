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

extension UIView: LJToolCompatible {
    
}

extension LJTool where Base: UIView {
    /// 设置一级背景
    @discardableResult
    func primaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_9
            return self
        }
    }
    
    /// 设置二级背景
    @discardableResult
    func secondaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cg_6
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_11
            return self
        }
    }

    /// 设置三级背景
    @discardableResult
    func tertiaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_12
            return self
        }
    }

    /// 设置升起的一级背景
    @discardableResult
    func elevatedPrimaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_11
            return self
        }
    }

    /// 设置升起的二级背景
    @discardableResult
    func elevatedSecondaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cg_6
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_12
            return self
        }
    }

    /// 设置升起的三级背景
    @discardableResult
    func elevatedTertiaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_17
            return self
        }
    }
    
    /// 少儿一级级背景
    @discardableResult
    func kidPrimaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cp_1
            return self
        }
    }
    
    /// 四级背景
    @discardableResult
    func quaternaryBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cg_19
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_12
            return self
        }
    }
    
    /// 一级组块背景
    @discardableResult
    func primaryGroupedBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cg_6
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_9
            return self
        }
    }
    
    /// 二级组块背景
    @discardableResult
    func secondaryGroupedBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_11
            return self
        }
    }
    
    /// 三级组块背景
    @discardableResult
    func tertiaryGroupedBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cg_6
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_12
            return self
        }
    }
    
    /// 升起一级组块背景
    @discardableResult
    func elevatedPrimaryGroupedBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cg_6
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_11
            return self
        }
    }
    
    /// 升起二级组块背景
    @discardableResult
    func elevatedSecondaryGroupedBackground() -> Self {
        switch Style.currentStyle {
        case .light:
            base.backgroundColor = StyleBasic.cw_1
            return self
        case .dark:
            base.backgroundColor = StyleBasic.cg_12
            return self
        }
    }
}

extension LJTool where Base: UINavigationBar {
    
    /// 黑色导航栏
    @discardableResult
    func blackNavigationBar() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setBackgroundImage(UIImage.lj.image(with: StyleBasic.cg_1), for: .default)
            return self
        case .dark:
            base.setBackgroundImage(UIImage.lj.image(with: StyleBasic.cg_18), for: .default)
            return self
        }
    }
    
    /// 白色导航栏
    @discardableResult
    func whiteNavigationBar() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setBackgroundImage(UIImage.lj.image(with: StyleBasic.cw_1), for: .default)
            return self
        case .dark:
            base.setBackgroundImage(UIImage.lj.image(with: StyleBasic.cg_18), for: .default)
            return self
        }
    }
}

extension LJTool where Base: UILabel {
    /// 一级信息色
    @discardableResult
    func primaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.textColor = StyleBasic.cd_1
            return self
        case .dark:
            base.textColor = StyleBasic.cw_1
            return self
        }
    }
    
    /// 二级信息色
    @discardableResult
    func secondaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.textColor = StyleBasic.cg_2
            return self
        case .dark:
            base.textColor = StyleBasic.cg_4
            return self
        }
    }
    
    /// 三级信息色
    @discardableResult
    func tertiaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.textColor = StyleBasic.cg_3
            return self
        case .dark:
            base.textColor = StyleBasic.cg_3
            return self
        }
    }
    
    /// 四级信息色
    @discardableResult
    func quaternaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.textColor = StyleBasic.cg_4
            return self
        case .dark:
            base.textColor = StyleBasic.cg_2
            return self
        }
    }
    
    /// 类一级信息色
    @discardableResult
    func primaryLikeInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.textColor = StyleBasic.cg_13
            return self
        case .dark:
            base.textColor = StyleBasic.cw_1
            return self
        }
    }
    
    /// 藏青色
    @discardableResult
    func navyBlue() -> Self {
        switch Style.currentStyle {
        case .light:
            base.textColor = StyleBasic.cb_3
            return self
        case .dark:
            base.textColor = StyleBasic.cw_1
            return self
        }
    }
}

extension LJTool where Base: UIButton {
    /// 一级信息色
    @discardableResult
    func primaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setTitleColor(StyleBasic.cd_1, for: .normal)
            return self
        case .dark:
            base.setTitleColor(StyleBasic.cw_1, for: .normal)
            return self
        }
    }
    
    /// 二级信息色
    @discardableResult
    func secondaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setTitleColor(StyleBasic.cg_2, for: .normal)
            return self
        case .dark:
            base.setTitleColor(StyleBasic.cg_4, for: .normal)
            return self
        }
    }
    
    /// 三级信息色
    @discardableResult
    func tertiaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setTitleColor(StyleBasic.cg_3, for: .normal)
            return self
        case .dark:
            base.setTitleColor(StyleBasic.cg_3, for: .normal)
            return self
        }
    }
    
    /// 四级信息色
    @discardableResult
    func quaternaryInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setTitleColor(StyleBasic.cg_4, for: .normal)
            return self
        case .dark:
            base.setTitleColor(StyleBasic.cg_2, for: .normal)
            return self
        }
    }
    
    /// 类一级信息色
    @discardableResult
    func primaryLikeInfo() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setTitleColor(StyleBasic.cg_13, for: .normal)
            return self
        case .dark:
            base.setTitleColor(StyleBasic.cw_1, for: .normal)
            return self
        }
    }
    
    /// 藏青色
    @discardableResult
    func navyBlue() -> Self {
        switch Style.currentStyle {
        case .light:
            base.setTitleColor(StyleBasic.cb_3, for: .normal)
            return self
        case .dark:
            base.setTitleColor(StyleBasic.cw_1, for: .normal)
            return self
        }
    }
}
