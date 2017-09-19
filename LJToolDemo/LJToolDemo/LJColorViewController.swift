//
//  LJColorViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/9/19.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit
import SnapKit

fileprivate let kUITableViewCell = "UITableViewCell"

class LJColorViewController: UIViewController {
    
    fileprivate lazy var tableView: UITableView = {
        let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
        tableView.backgroundColor = UIColor.lj.background
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: kUITableViewCell)
        return tableView
    }()
    
    fileprivate let colorText = ["rgb", "hex", "blue", "tintBlue", "deepBlue", "black", "red", "yellow", "green", "gray", "gray333", "gray666", "gray999", "background", "line", "text", "price"]
    
    fileprivate let color = [UIColor.lj.color(r: 10, g: 10, b: 10), UIColor.lj.color(0x123456, alpha: 1), UIColor.lj.blue, UIColor.lj.tintBlue, UIColor.lj.deepBlue, UIColor.lj.black, UIColor.lj.red, UIColor.lj.yellow, UIColor.lj.green, UIColor.lj.gray, UIColor.lj.gray333, UIColor.lj.gray666, UIColor.lj.gray999, UIColor.lj.background, UIColor.lj.line, UIColor.lj.text, UIColor.lj.price]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "UIColor"
        view.backgroundColor = UIColor.lj.background
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: TableView Delegate & DataSource
extension LJColorViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kUITableViewCell, for: indexPath)
        cell.selectionStyle = .none
        cell.textLabel?.text = colorText[indexPath.row]
        cell.imageView?.image = UIImage.lj.image(with: color[indexPath.row], size: CGSize(width: 20, height: 20))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.001
    }
}
