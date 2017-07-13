//
//  LJToll+UICreateViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/7/13.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit
import LJTool

class LJTool_UICreateViewController: UIViewController {

    fileprivate lazy var label: UILabel = {
        let label = UILabel.lj.label(textColor: UIColor.lj.red, fontSize: 14)
        return label
    }()
    
    fileprivate lazy var imageView: UIImageView = {
        let imageView = UIImageView.lj.imageView()
        return imageView
    }()
    
    fileprivate lazy var button: UIButton = {
        let button = UIButton.lj.button(title: "I am a button", titleColor: UIColor.white, fontSize: 14, image: nil)
        button.backgroundColor = UIColor.lj.green
        return button
    }()
    
    fileprivate lazy var textField: UITextField = {
        let textField: UITextField = UITextField.lj.textField(placeholder: "please input some text")
        textField.borderStyle = .line
        return textField
    }()
    
    fileprivate lazy var tableView: UITableView = {
        let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
        tableView.backgroundColor = UIColor.lj.background
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        label.frame = CGRect(x: 10, y: 100, width: 100, height: 30)
        imageView.frame = CGRect(x: 10, y: 150, width: 100, height: 50)
        button.frame = CGRect(x: 10, y: 220, width: 100, height: 40)
        textField.frame = CGRect(x: 10, y: 280, width: 300, height: 40)
        tableView.frame = CGRect(x: 10, y: 340, width: 200, height: 200)
        
        view.addSubview(label)
        view.addSubview(imageView)
        view.addSubview(button)
        view.addSubview(textField)
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}

// MARK: TableView Delegate & DataSource
extension LJTool_UICreateViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.001
    }
}

