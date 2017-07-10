//
//  ViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/7/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit
import LJTool

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageView = UIImageView(frame: CGRect(x: 30, y: 100, width: 100, height: 100))
        view.addSubview(imageView)
        
//        imageView.image = UIImage.lj.createQRImage("test")
        imageView.image = UIImage.lj.QRImage("test")
        imageView.image = UIImage.lj.image(with: UIColor.lj.price)
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 30, y: 220, width: 100, height: 40)
        button.backgroundColor = UIColor.lj.blue
        view.addSubview(button)
        
        button.setImage(UIImage.lj.image(with: UIColor.lj.red), for: .normal)
        button.setTitle("test", for: .normal)
        button.lj.alignImageRightTitleLeft()
        
        let button2 = UIButton.lj.button(title: "button2", image: nil)
        button2.frame = CGRect(x: 150, y: 220, width: 100, height: 40)
        view.addSubview(button2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

