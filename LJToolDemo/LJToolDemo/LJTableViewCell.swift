//
//  LJTableViewCell.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/9/19.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit

fileprivate let kLJCollectionViewCell = "LJCollectionViewCell"
fileprivate let SCREENWIDTH = UIScreen.main.bounds.size.width

class LJTableViewCell: UITableViewCell {
    
    fileprivate lazy var spaceView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lj.background
        return view
    }()
    fileprivate lazy var logoImageView: UIImageView = {
        let imageView = UIImageView.lj.imageView()
        imageView.layer.cornerRadius = 2
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    fileprivate lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.lj.primaryBackground().primaryInfo()
        return label
    }()
    
    fileprivate lazy var dateLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    fileprivate lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 5
        return label
    }()
    
    fileprivate lazy var imageCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView.lj.collectionView(layout: layout, dataSource: self, delegate: self)
        collection.register(LJCollectionViewCell.self, forCellWithReuseIdentifier: kLJCollectionViewCell)
        return collection
    }()
    
    fileprivate lazy var lineView: UIView = {
        let view = UIView()
        view.lj.elevatedPrimaryBackground()
        return view
    }()
    
    fileprivate lazy var commentButton: UIButton = {
        let button = UIButton.lj.button(title: "20", titleColor: UIColor.darkText, image: #imageLiteral(resourceName: "icon_评论"))
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: -5)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        return button
    }()
    fileprivate lazy var collectionButton: UIButton = {
        let button = UIButton.lj.button(title: "31", titleColor: UIColor.darkText, image: #imageLiteral(resourceName: "icon_收藏"))
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: -5)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        return button
    }()
    fileprivate lazy var shareButton: UIButton = {
        let button = UIButton.lj.button(title: "31", titleColor: UIColor.darkText, image: #imageLiteral(resourceName: "icon_分享"))
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: -5)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: setup
extension LJTableViewCell {
    
    fileprivate func setup() {
        contentView.addSubview(spaceView)
        contentView.addSubview(logoImageView)
        contentView.addSubview(userNameLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(contentLabel)
        contentView.addSubview(imageCollectionView)
        contentView.addSubview(lineView)
        contentView.addSubview(commentButton)
        contentView.addSubview(collectionButton)
        contentView.addSubview(shareButton)
        
        spaceView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(contentView)
            make.height.equalTo(10)
        }
        logoImageView.snp.makeConstraints { (make) in
            make.top.equalTo(spaceView.snp.bottom).offset(8)
            make.left.equalTo(contentView).offset(8)
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        
        userNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(logoImageView).offset(0)
            make.left.equalTo(logoImageView.snp.right).offset(10)
            make.right.equalTo(contentView).offset(-8)
        }
        
        dateLabel.snp.makeConstraints { (make) in
            make.left.equalTo(logoImageView.snp.right).offset(10)
            make.right.equalTo(contentView).offset(-8)
            make.bottom.equalTo(logoImageView).offset(0)
        }
        
        contentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(logoImageView.snp.bottom).offset(10)
            make.left.equalTo(contentView).offset(8)
            make.right.equalTo(contentView).offset(-8)
        }
        
        imageCollectionView.snp.makeConstraints { (make) in
            make.top.equalTo(contentLabel.snp.bottom).offset(10)
            make.left.equalTo(contentView).offset(8)
            make.right.equalTo(contentView).offset(-8)
            make.height.equalTo(floor((SCREENWIDTH-30)/3))
        }
        
        lineView.snp.makeConstraints { (make) in
            make.top.equalTo(imageCollectionView.snp.bottom).offset(15)
            make.left.equalTo(contentView).offset(8)
            make.right.equalTo(contentView).offset(-8)
            make.height.equalTo(0.5)
        }
        commentButton.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(10)
            make.left.equalTo(contentView).offset(8)
            make.bottom.equalTo(contentView).offset(-15)
        }
        collectionButton.snp.makeConstraints { (make) in
            make.top.equalTo(commentButton).offset(0)
            make.left.equalTo(commentButton.snp.right).offset(15)
        }
        shareButton.snp.makeConstraints { (make) in
            make.top.equalTo(commentButton).offset(0)
            make.left.equalTo(collectionButton.snp.right).offset(15)
        }
        
    }
}

// MARK: UICollectionViewDelegate & UICollectionViewDataSource
extension LJTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kLJCollectionViewCell, for: indexPath) as! LJCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
}

// MARK: UICollectionViewDelegateFlowLayout
extension LJTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: floor((SCREENWIDTH-30)/3), height: floor((SCREENWIDTH-30)/3))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
