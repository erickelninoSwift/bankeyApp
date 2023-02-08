//
//  AccountSummaryViewcontroller.swift
//  Bankey
//
//  Created by Erick El nino on 2023/02/06.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit


private let cellid = "AccountSummaryViewController"
class AccountSummaryViewController: UIViewController
{
    
    let data = ["Erick","Jackpot","Cholo"]
    
    
    
    private  var tableview: UITableView =
    {
        let table = UITableView()
        
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = AccountSummaryHeaderView.rowheight
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        style()
        layout()
        tableview.delegate = self
        tableview.dataSource = self
        
    }
}

extension AccountSummaryViewController
{
    private func style()
    {
        view.addSubview(tableview)
        view.backgroundColor = .white
        self.tableview.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        setupHeaderView()

    }
    
    
    private func layout()
    {
        NSLayoutConstraint.activate([tableview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0),
                                     view.trailingAnchor.constraint(equalToSystemSpacingAfter: tableview.trailingAnchor, multiplier: 0),
                                     tableview.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 0),
                                     view.bottomAnchor.constraint(equalToSystemSpacingBelow: tableview.bottomAnchor, multiplier: 0)
        ])
    }
    
    private func setupHeaderView()
    {
        let headerView = AccountSummaryHeaderView(frame: .zero)
        var size = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        size.width = UIScreen.main.bounds.width
        headerView.frame.size = size
        headerView.backgroundColor = .systemRed
        self.tableview.tableHeaderView = headerView
    }

}

extension AccountSummaryViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
      
        let currentdata = data[indexPath.row]
        cell.textLabel?.text = currentdata
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableview.deselectRow(at: indexPath, animated: true)
    }

}


