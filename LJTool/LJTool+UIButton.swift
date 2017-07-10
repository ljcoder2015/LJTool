//
//  LJTool+UIButton.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import Foundation
import UIKit

extension UIButton: LJToolCompatible {
    
}

extension LJTool where Base: UIButton {
    
    public func alignImageUpTitleDown(_ padding: CGFloat = 5) {
        
        let imageSize = base.imageView?.intrinsicContentSize ?? CGSize.zero
        let titleSize = base.titleLabel?.intrinsicContentSize ?? CGSize.zero
        
        base.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -imageSize.height-padding*0.5, right: 0)
        base.imageEdgeInsets = UIEdgeInsets(top: -titleSize.height-padding*0.5, left: 0, bottom: 0, right: -titleSize.width)
    }
    
    public func alignImageRightTitleLeft(_ padding: CGFloat = 5) {
        
        let imageSize = base.imageView?.intrinsicContentSize ?? CGSize.zero
        let titleSize = base.titleLabel?.intrinsicContentSize ?? CGSize.zero
        
        base.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: 0, right: imageSize.width+padding*0.5)
        base.imageEdgeInsets = UIEdgeInsets(top: 0, left: titleSize.width+padding*0.5, bottom: 0, right: -titleSize.width)
    }
}
