//
//  LJTool+UI.swift
//  LJTool
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import Foundation
import UIKit

// MARK: Create UIImageView
extension LJTool where Base: UIImageView {
    
    public static func imageView(image: UIImage? = nil) -> UIImageView {
        let imageView = UIImageView(image: image)
        if image == nil {
            imageView.image = UIImage.lj.image(with: StyleBasic.cg_6)
        }
        return imageView
    }
    
}

// MARK: Create UIButton
extension LJTool where Base: UIButton {
    
    public static func button(title: String?, image: UIImage?) -> UIButton {
        let button = UIButton(type: .custom)
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
    
    public static func tableView(style: UITableView.Style = .grouped, dataSource: UITableViewDataSource, delegate: UITableViewDelegate) -> UITableView {
        let tableView = UITableView(frame: .zero, style: style)
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.separatorColor = StyleBasic.cg_6
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
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
