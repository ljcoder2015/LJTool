//
//  LJStyleViewController.swift
//  LJToolDemo
//
//  Created by 雷军 on 2020/2/29.
//  Copyright © 2020 ljcoder. All rights reserved.
//

import UIKit
import LJTool

class LJStyleViewController: UIViewController {

    fileprivate let kUITableViewCell = "UITableViewCell"
    
    fileprivate lazy var tableView: UITableView = {
        let tableView: UITableView = UITableView.lj.tableView(dataSource: self, delegate: self)
        tableView.backgroundColor = UIColor.lj.background
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: kUITableViewCell)
        return tableView
    }()
    
    fileprivate let colorText = ["primaryBackground", "Background", "secondaryBackground", "tertiaryBackground", "line", "primaryInfo", "secondaryInfo", "tertiaryInfo", "quaternaryInfo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Style"
        view.backgroundColor = UIColor.lj.background
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }
}

// MARK: TableView Delegate & DataSource
extension LJStyleViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kUITableViewCell, for: indexPath)
        cell.selectionStyle = .none
        cell.textLabel?.text = colorText[indexPath.row]
        switch indexPath.row {
        case 0:
            cell.contentView.backgroundColor = UIColor.lj.primary
            cell.textLabel?.textColor = UIColor.lj.primaryText
        case 1:
            cell.contentView.backgroundColor = UIColor.lj.background
            cell.textLabel?.textColor = UIColor.lj.primaryText
        case 2:
            cell.contentView.backgroundColor = UIColor.lj.secondaryBackground
            cell.textLabel?.textColor = UIColor.lj.primaryText
        case 3:
            cell.contentView.backgroundColor = UIColor.lj.tertiaryBackground
            cell.textLabel?.textColor = UIColor.lj.primaryText
        case 4:
            cell.contentView.backgroundColor = UIColor.lj.line
            cell.textLabel?.textColor = UIColor.lj.primaryText
        case 5:
            cell.contentView.backgroundColor = UIColor.lj.background
            cell.textLabel?.textColor = UIColor.lj.primaryText
        case 6:
            cell.contentView.backgroundColor = UIColor.lj.background
            cell.textLabel?.textColor = UIColor.lj.secondaryText
        case 7:
            cell.contentView.backgroundColor = UIColor.lj.background
            cell.textLabel?.textColor = UIColor.lj.tertiaryText
        case 8:
            cell.contentView.backgroundColor = UIColor.lj.background
            cell.textLabel?.textColor = UIColor.lj.quaternaryText
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
}
