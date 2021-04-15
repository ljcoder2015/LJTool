//
//  LJTool+ImageViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/7/13.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit
import LJTool

class LJTool_ImageViewController: UIViewController {

    fileprivate lazy var QRLabel: UILabel = {
        let label = UILabel.lj.label()
        label.text = "create a QR image"
        return label
    }()
    
    fileprivate lazy var QRImageView: UIImageView = {
        let imageView = UIImageView.lj.imageView()
        return imageView
    }()
    
    fileprivate lazy var colorLabel: UILabel = {
        let label = UILabel.lj.label()
        label.text = "create a color image"
        return label
    }()
    
    fileprivate lazy var colorImageView: UIImageView = {
        let imageView = UIImageView.lj.imageView()
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        QRLabel.frame = CGRect(x: 10, y: 100, width: 300, height: 30)
        QRImageView.frame = CGRect(x: 10, y: 150, width: 100, height: 100)
        colorLabel.frame = CGRect(x: 10, y: 270, width: 300, height: 30)
        colorImageView.frame = CGRect(x: 10, y: 320, width: 100, height: 100)
        
        view.addSubview(QRLabel)
        view.addSubview(QRImageView)
        view.addSubview(colorLabel)
        view.addSubview(colorImageView)
        
        QRImageView.image = UIImage.lj.QRImage("test")
        colorImageView.image = UIImage.lj.image(with: UIColor.red)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
