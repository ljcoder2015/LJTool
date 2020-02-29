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
    
    fileprivate let colorText = ["primaryBackground", "secondaryBackground", "tertiaryBackground", "elevatedPrimaryBackground", "elevatedSecondaryBackground", "elevatedTertiaryBackground", "kidPrimaryBackground", "quaternaryBackground", "primaryGroupedBackground", "secondaryGroupedBackground", "tertiaryGroupedBackground", "elevatedPrimaryGroupedBackground", "elevatedSecondaryGroupedBackground", "primaryInfo", "secondaryInfo", "tertiaryInfo", "quaternaryInfo", "primaryLikeInfo", "navyBlue"]
    
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
            cell.contentView.lj.primaryBackground()
        case 1:
            cell.contentView.lj.secondaryBackground()
        case 2:
            cell.contentView.lj.tertiaryBackground()
        case 3:
            cell.contentView.lj.elevatedPrimaryBackground()
        case 4:
            cell.contentView.lj.elevatedSecondaryBackground()
        case 5:
            cell.contentView.lj.elevatedTertiaryBackground()
        case 6:
            cell.contentView.lj.kidPrimaryBackground()
        case 7:
            cell.contentView.lj.quaternaryBackground()
        case 8:
            cell.contentView.lj.primaryGroupedBackground()
        case 9:
            cell.contentView.lj.secondaryGroupedBackground()
        case 10:
            cell.contentView.lj.tertiaryGroupedBackground()
        case 11:
            cell.contentView.lj.elevatedPrimaryGroupedBackground()
        case 12:
            cell.contentView.lj.elevatedSecondaryGroupedBackground()
        case 13:
            cell.contentView.lj.primaryBackground()
            cell.textLabel?.lj.primaryInfo()
        case 14:
            cell.contentView.lj.primaryBackground()
            cell.textLabel?.lj.secondaryInfo()
        case 15:
            cell.contentView.lj.primaryBackground()
            cell.textLabel?.lj.tertiaryInfo()
        case 16:
            cell.contentView.lj.primaryBackground()
            cell.textLabel?.lj.quaternaryInfo()
        case 17:
            cell.contentView.lj.primaryBackground()
            cell.textLabel?.lj.primaryLikeInfo()
        case 18:
            cell.contentView.lj.primaryBackground()
            cell.textLabel?.lj.navyBlue()
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
