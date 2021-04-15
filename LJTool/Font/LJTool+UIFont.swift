//
//  LJTool+UIFont.swift
//  LJTool
//
//  Created by ljcoder on 2021/4/15.
//  Copyright © 2021 ljcoder. All rights reserved.
//

import UIKit

extension UIFont: LJToolCompatible {

}

public extension LJTool where Base: UIFont {
   static var display1: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 42, weight: .semibold), forTextStyle: .largeTitle, maximumFactor: 1.5)
    }

    static var display2: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 36, weight: .semibold), forTextStyle: .largeTitle, maximumFactor: 1.5)
    }

    static var title1: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 24, weight: .semibold), forTextStyle: .title1)
    }

    static var title2: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 20, weight: .semibold), forTextStyle: .title2)
    }

    static var title3: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 18, weight: .semibold), forTextStyle: .title3)
    }

    static var title4: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 14, weight: .regular), forTextStyle: .headline)
    }

    static var title5: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 12, weight: .regular), forTextStyle: .subheadline)
    }

    static var bodyBold: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 16, weight: .semibold), forTextStyle: .body)
    }

    static var body: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 16, weight: .light), forTextStyle: .body)
    }

    static var captionBold: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 14, weight: .semibold), forTextStyle: .caption1)
    }

    static var caption: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 14, weight: .light), forTextStyle: .caption1)
    }

    static var small: UIFont {
        UIFont.lj.scaled(baseFont: .systemFont(ofSize: 12, weight: .light), forTextStyle: .footnote)
    }
}

private extension LJTool where Base: UIFont {
    static func scaled(baseFont: UIFont, forTextStyle textStyle: UIFont.TextStyle = .body, maximumFactor: CGFloat? = nil) -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: textStyle)

        if let maximumFactor = maximumFactor {
            let maximumPointSize = baseFont.pointSize * maximumFactor
            return fontMetrics.scaledFont(for: baseFont, maximumPointSize: maximumPointSize)
        }
        return fontMetrics.scaledFont(for: baseFont)
    }
}
