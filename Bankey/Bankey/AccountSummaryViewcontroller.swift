//
//  AccountSummaryViewcontroller.swift
//  Bankey
//
//  Created by Erick El nino on 2023/02/06.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit

class AccountSummaryViewController: UIViewController
{
    
    var tableview = UITableView()
    
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
        tableview.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private func layout()
    {
        NSLayoutConstraint.activate([tableview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0),
                                     view.trailingAnchor.constraint(equalToSystemSpacingAfter: tableview.trailingAnchor, multiplier: 0),
                                     tableview.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 0),
                                     view.bottomAnchor.constraint(equalToSystemSpacingBelow: tableview.bottomAnchor, multiplier: 0)
        ])
    }
}

extension AccountSummaryViewController: UITableViewDelegate, UITableViewDataSource
{
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableview.deselectRow(at: indexPath, animated: true)
    }
}


