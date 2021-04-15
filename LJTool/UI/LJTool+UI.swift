//
//  LJTool+UI.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit

extension UILabel: LJToolCompatible {
    
}

// MARK: Create UILabel
public extension LJTool where Base: UILabel {
    
    static func label(font: UIFont = UIFont.lj.body) -> UILabel {
        let label = UILabel()
        label.textColor = UIColor.lj.primaryText
        label.text = "------"
        label.font = font
        label.adjustsFontForContentSizeCategory = true
        return label
    }
}

extension UIImageView: LJToolCompatible {
    
}

// MARK: Create UIImageView
public extension LJTool where Base: UIImageView {
    
    static func imageView(image: UIImage? = nil) -> UIImageView {
        let imageView = UIImageView(image: image)
        if image == nil {
            imageView.image = UIImage.lj.image(with: UIColor.lightGray)
        }
        return imageView
    }
    
}

extension UIButton: LJToolCompatible {
    
}

// MARK: Create UIButton
public extension LJTool where Base: UIButton {
    
    static func button(title: String?, font: UIFont = UIFont.lj.body, image: UIImage?) -> UIButton {
        let button = UIButton(type: .system)
        button.titleLabel?.font = font
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        return button
    }
}

extension UITextField: LJToolCompatible {
    
}

// MARK: Create UITextField
public extension LJTool where Base: UITextField {
    
    static func textField(placeholder: String?, leftView: UIView? = nil, rightView: UIView? = nil) -> UITextField {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 14, weight: .light)
        textField.placeholder = placeholder
        if (leftView != nil) {
            textField.leftView = leftView
            textField.leftViewMode = .always
        }
        
        if (rightView != nil) {
            textField.rightView = rightView
            textField.rightViewMode = .always
        }
        
        return textField
    }
}

extension UITableView: LJToolCompatible {
    
}

// MARK: Create UITableView
public extension LJTool where Base: UITableView {
    
    static func tableView(style: UITableView.Style = .grouped, dataSource: UITableViewDataSource, delegate: UITableViewDelegate) -> UITableView {
        let tableView = UITableView(frame: .zero, style: style)
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return tableView
    }
}

extension UICollectionView: LJToolCompatible {
    
}

// MARK: Create UICollectionView
public extension LJTool where Base: UICollectionView {
    static func collectionView(layout: UICollectionViewLayout, dataSource: UICollectionViewDataSource, delegate: UICollectionViewDelegate) -> UICollectionView {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
        collectionView.backgroundColor = UIColor.white
        return collectionView
    }
}
