//
//  LJColorViewController.swift
//  LJToolDemo
//
//  Created by ljcoder on 2017/9/19.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

import UIKit
import SnapKit
import LJTool

class LJColorViewController: UIViewController {
    
    fileprivate let kUITableViewCell = "UITableViewCell"
    
    fileprivate lazy var tableView: UITableView = {
        let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
        tableView.backgroundColor = UIColor.lj.background
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: kUITableViewCell)
        return tableView
    }()
    
    fileprivate let colorText = ["cd_1", "cg_1", "cg_2", "cg_3", "cg_4", "cg_5", "cg_6", "cg_9", "cg_11", "cg_12", "cg_13", "cg_17", "cg_18", "cg_19", "cp_1", "cr_1", "cr_2", "cb_1", "cb_2", "cb_3", "cgr_1", "cy_1", "cy_2", "cw_1"]
    
    fileprivate let color = [StyleBasic.cd_1, StyleBasic.cg_1, StyleBasic.cg_2, StyleBasic.cg_3, StyleBasic.cg_4, StyleBasic.cg_5, StyleBasic.cg_6, StyleBasic.cg_9, StyleBasic.cg_11, StyleBasic.cg_12, StyleBasic.cg_13, StyleBasic.cg_17, StyleBasic.cg_18, StyleBasic.cg_19, StyleBasic.cp_1, StyleBasic.cr_1, StyleBasic.cr_2, StyleBasic.cb_1, StyleBasic.cb_2, StyleBasic.cb_3, StyleBasic.cgr_1, StyleBasic.cy_1, StyleBasic.cy_2, StyleBasic.cw_1]
    
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
