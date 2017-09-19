//
//  LJCollectionViewCell.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/9/19.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit

class LJCollectionViewCell: UICollectionViewCell {
    
    fileprivate lazy var coverImageView: UIImageView = {
        let imageView = UIImageView.lj.imageView()
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LJCollectionViewCell {
    fileprivate func setup() {
        contentView.addSubview(coverImageView)
        
        coverImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(contentView)
        }
    }
}
