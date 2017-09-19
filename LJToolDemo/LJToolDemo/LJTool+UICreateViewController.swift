//
//  LJToll+UICreateViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/7/13.
//  Copyright © 2017年 ljcoder. All rights reserved.
//  GitHub: https://github.com/ljcoder2015/LJTool
//

import UIKit
import LJTool
import SnapKit

fileprivate let kLJTableViewCell = "LJTableViewCell"

class LJTool_UICreateViewController: UIViewController {
    
    // MARK: UI
    fileprivate lazy var tableView: UITableView = {
        let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
        tableView.backgroundColor = UIColor.lj.background
        tableView.register(LJTableViewCell.self, forCellReuseIdentifier: kLJTableViewCell)
        return tableView
    }()
    
    // MARK: Property
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "UI Create"
        
        setupUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: SetupUI
extension LJTool_UICreateViewController {
    
    fileprivate func setupUI() {
        // addSubView
        view.addSubview(tableView)
        // layout
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }
}

// MARK: TableView Delegate & DataSource
extension LJTool_UICreateViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kLJTableViewCell, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.001
    }
}

