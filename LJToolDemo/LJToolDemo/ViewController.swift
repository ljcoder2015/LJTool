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

    fileprivate lazy var tableView: UITableView = {
        let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
        tableView.backgroundColor = UIColor.lj.background
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "LJTool"
        
        tableView.frame = view.bounds
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK: TableView Delegate & DataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "UI Color"
        case 1:
            cell.textLabel?.text = "UI Create"
        case 2:
            cell.textLabel?.text = "LJTool Image"
        case 3:
            cell.textLabel?.text = "LJTool Button"
        case 4:
            cell.textLabel?.text = "LJTool String"
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.001
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let color = LJColorViewController()
            navigationController?.pushViewController(color, animated: true)
        }
        if indexPath.row == 1 {
            let UI = LJTool_UICreateViewController()
            navigationController?.pushViewController(UI, animated: true)
        }
        if indexPath.row == 2 {
            let image = LJTool_ImageViewController()
            navigationController?.pushViewController(image, animated: true)
        }
        if indexPath.row == 3 {
            let button = LJButtonViewController()
            navigationController?.pushViewController(button, animated: true)
        }
        if indexPath.row == 4 {
            let string = LJStringViewController()
            navigationController?.pushViewController(string, animated: true)
        }
    }
}
