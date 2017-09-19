//
//  LJTool+UI.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import Foundation
import UIKit

extension UILabel: LJToolCompatible {
    
}

extension UIImageView: LJToolCompatible {

}

extension UITextField: LJToolCompatible {
    
}

extension UITableView: LJToolCompatible {
    
}

extension UICollectionView: LJToolCompatible {
    
}

// MARK: Create UILabel
extension LJTool where Base: UILabel {
    
    public static func label(textColor: UIColor, fontSize: CGFloat = 17) -> UILabel {
        let label = UILabel()
        label.textColor = textColor
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.text = "------"
        return label
    }
    
    public static func label(textColor: UIColor = UIColor.lj.text, fontStyle: UIFontTextStyle = .body) -> UILabel {
        let label = UILabel()
        label.textColor = textColor
        label.text = "------"
        label.font = UIFont.preferredFont(forTextStyle: fontStyle)
        if #available(iOS 10.0, *) {
            label.adjustsFontForContentSizeCategory = true
        }
        return label
    }
}

// MARK: Create UIImageView
extension LJTool where Base: UIImageView {
    
    public static func imageView(image: UIImage? = nil) -> UIImageView {
        let imageView = UIImageView(image: image)
        if image == nil {
            imageView.image = UIImage.lj.image(with: UIColor.lj.gray)
        }
        return imageView
    }
    
}

// MARK: Create UIButton
extension LJTool where Base: UIButton {
    
    public static func button(title: String?, titleColor: UIColor?, fontSize: CGFloat, image: UIImage?) -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        return button
    }
    
    public static func button(title: String?, titleColor: UIColor?, fontStyle: UIFontTextStyle = .body, image: UIImage?) -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: fontStyle)
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        return button
    }
}

// MARK: Create UITextField
extension LJTool where Base: UITextField {
    
    public static func textField(placeholder: String?, leftView: UIView? = nil, rightView: UIView? = nil) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.leftView = leftView
        textField.leftViewMode = .always
        textField.rightView = rightView
        textField.rightViewMode = .always
        return textField
    }
}

// MARK: Create UITableView
extension LJTool where Base: UITableView {
    
    public static func tableView(style: UITableViewStyle = .plain, dataSource: UITableViewDataSource, delegate: UITableViewDelegate) -> UITableView {
        let tableView = UITableView(frame: .zero, style: style)
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.separatorColor = UIColor.lj.gray
        tableView.separatorInset = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        return tableView
    }
}

// MARK: Create UICollectionView
extension LJTool where Base: UICollectionView {
    public static func collectionView(layout: UICollectionViewLayout, dataSource: UICollectionViewDataSource, delegate: UICollectionViewDelegate) -> UICollectionView {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
        collectionView.backgroundColor = UIColor.white
        return collectionView
    }
}
