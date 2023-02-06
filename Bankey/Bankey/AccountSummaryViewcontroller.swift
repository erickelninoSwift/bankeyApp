//
//  AccountSummaryViewcontroller.swift
//  Bankey
//
//  Created by Erick El nino on 2023/02/06.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit

class AccountSummaryViewController: UITableViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
    }
}

extension AccountSummaryViewController
{
    private func style()
    {
        view.backgroundColor = .white
    }
    
    
    private func layout()
    {
        
    }
}

extension AccountSummaryViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}


