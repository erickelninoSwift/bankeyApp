//
//  AccountSummaryCell.swift
//  Bankey
//
//  Created by Erick El nino on 2023/02/08.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit

class AccountSummaryCell : UITableViewCell
{
    static let AccountSumCellID = "AccountSummaryCellID"
    static let tableviewRowHeight: CGFloat = 100
    
     lazy var titleLabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Banking"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    
    lazy var underlineView: UIView =
    {
         let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = appColor
        view.heightAnchor.constraint(equalToConstant: 3).isActive = true
        return view
    }()
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:  reuseIdentifier)
        layout()
        config()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AccountSummaryCell
{
    fileprivate func layout()
    {
        contentView.addSubview(titleLabel)
        contentView.addSubview(underlineView)
    }
    
    
    fileprivate func config()
    {
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1),
                                     titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2)
        ])
        
        NSLayoutConstraint.activate([underlineView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2),
                                     underlineView.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 1),
                                     underlineView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }
}


