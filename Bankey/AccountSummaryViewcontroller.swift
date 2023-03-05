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
    
    var dataAccount = [AccountViewModel]()
    
    private  var tableview: UITableView =
    {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(AccountSummaryCell.self, forCellReuseIdentifier: AccountSummaryCell.AccountSumCellID)
        table.rowHeight = AccountSummaryCell.tableviewRowHeight
        
        return table
    }()
    
    
    lazy var logoutBarbutton: UIBarButtonItem =
    {
        let button = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleLogouttapped))
        button.tintColor = .label
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        setupHeaderView()
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
        self.navigationController?.navigationBar.isHidden = false
        view.addSubview(tableview)
        view.backgroundColor = .white
        tableview.backgroundColor = appColor
    }
    
    
    private func layout()
    {
        NSLayoutConstraint.activate([tableview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0),
                                     view.trailingAnchor.constraint(equalToSystemSpacingAfter: tableview.trailingAnchor, multiplier: 0),
                                     tableview.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 0),
                                     view.bottomAnchor.constraint(equalToSystemSpacingBelow: tableview.bottomAnchor, multiplier: 0)
        ])
        
        self.navigationController?.navigationItem.rightBarButtonItem = logoutBarbutton
    }
    
    private func setupHeaderView()
    {
        let headerView = AccountSummaryHeaderView(frame: .zero)
        var size = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        size.width = UIScreen.main.bounds.width
        headerView.frame.size = size
        self.tableview.tableHeaderView = headerView
        self.tableview.tableFooterView = UIView()
        
    }
    
    
    @objc private func handleLogouttapped()
    {
        print("DEBUG: LOGGOUT TAPPED")
    }

}

extension AccountSummaryViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataAccount.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AccountSummaryCell.AccountSumCellID, for: indexPath) as? AccountSummaryCell else {return UITableViewCell()}
        let currentAccount  = dataAccount[indexPath.row]
        cell.selectedViewmodel = currentAccount
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableview.deselectRow(at: indexPath, animated: true)
    }

}

extension AccountSummaryViewController
{
    func fetchData()
    {
        let savings = AccountViewModel(accountType: .Banking,
                                                            accountName: "Basic Savings",
                                                        balance: 929466.23)
        let chequing = AccountViewModel(accountType: .Banking,
                                                    accountName: "No-Fee All-In Chequing",
                                                    balance: 17562.44)
        let visa = AccountViewModel(accountType: .Creditcard,
                                                       accountName: "Visa Avion Card",
                                                       balance: 412.83)
        let masterCard = AccountViewModel(accountType: .Creditcard,
                                                       accountName: "Student Mastercard",
                                                       balance: 50.83)
        let investment1 = AccountViewModel(accountType: .Investment,
                                                       accountName: "Tax-Free Saver",
                                                       balance: 2000.00)
        let investment2 = AccountViewModel(accountType: .Investment,
                                                       accountName: "Growth Fund",
                                                       balance: 15000.00)
         dataAccount.append(savings)
         dataAccount.append(chequing)
         dataAccount.append(visa)
         dataAccount.append(masterCard)
         dataAccount.append(investment1)
         dataAccount.append(investment2)
    }
}

