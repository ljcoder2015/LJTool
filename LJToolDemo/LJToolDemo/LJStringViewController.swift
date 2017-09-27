//
//  LJStringViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/9/27.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit

class LJStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "String"
        
        self.view.backgroundColor = UIColor.lj.background
        
        let text = "create a color image create a color image create a color image create a color image create a color image create a color image create a color image create a color imagecreate a color image create a color image create a color image create a color image create a color image create a color image create a color image create a color image"
        
        let size = text.lj.size(drawIn: CGSize(width: UIScreen.main.bounds.size.width - 20, height: 300), font: UIFont.preferredFont(forTextStyle: .body))
        print(size)
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
