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
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textColor = .black
        return label
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
    }
    
    
    fileprivate func config()
    {
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1),
                                     titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2)
        ])
    }
}


