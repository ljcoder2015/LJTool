//
//  LJButtonViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/9/19.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit
import SnapKit

class LJButtonViewController: UIViewController {

    fileprivate lazy var commentButton: UIButton = {
        let button = UIButton.lj.button(title: "20", titleColor: UIColor.lj.gray999, fontSize: 14, image: #imageLiteral(resourceName: "icon_评论"))
        button.backgroundColor = UIColor.white
        return button
    }()
    fileprivate lazy var collectionButton: UIButton = {
        let button = UIButton.lj.button(title: "31", titleColor: UIColor.lj.gray999, fontSize: 14, image: #imageLiteral(resourceName: "icon_收藏"))
        button.backgroundColor = UIColor.white
        return button
    }()
    fileprivate lazy var shareButton: UIButton = {
        let button = UIButton.lj.button(title: "31", titleColor: UIColor.lj.gray999, fontSize: 14, image: #imageLiteral(resourceName: "icon_分享"))
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: -5)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        button.backgroundColor = UIColor.white
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Button"
        view.backgroundColor = UIColor.lj.background
        setupUI()
        commentButton.lj.alignImageRightTitleLeft()
        collectionButton.lj.alignImageUpTitleDown()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension LJButtonViewController {
    fileprivate func setupUI() {
        view.addSubview(commentButton)
        view.addSubview(collectionButton)
        view.addSubview(shareButton)
        
        commentButton.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(100)
            make.left.equalTo(view).offset(8)
            make.height.equalTo(80)
        }
        collectionButton.snp.makeConstraints { (make) in
            make.top.equalTo(commentButton).offset(0)
            make.left.equalTo(commentButton.snp.right).offset(15)
            make.width.equalTo(commentButton)
            make.height.equalTo(80)
        }
        shareButton.snp.makeConstraints { (make) in
            make.top.equalTo(commentButton).offset(0)
            make.left.equalTo(collectionButton.snp.right).offset(15)
            make.right.equalTo(view).offset(-8)
            make.width.equalTo(collectionButton)
            make.height.equalTo(80)
        }
    }
}
