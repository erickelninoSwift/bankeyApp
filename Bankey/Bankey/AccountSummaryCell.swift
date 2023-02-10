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
    static let tableviewRowHeight: CGFloat = 120
    
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
            view.heightAnchor.constraint(equalToConstant: 4).isActive = true
            return view
    }()
    
    lazy var nameLabel: UILabel =
        {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "No-Fee-All-In Chequing"
            label.font = UIFont.preferredFont(forTextStyle: .caption1)
            label.textColor = .black
            return label
    }()
    
    
    lazy var BalanceLable: UILabel =
        {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Some balance"
            label.font = UIFont.preferredFont(forTextStyle: .body)
            label.textAlignment = .right
            label.textColor = .darkGray
            return label
    }()
    
    lazy var AmountLable: UILabel =
        {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "R908.560.000"
            label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            label.textAlignment = .right
            label.textColor = .black
            return label
    }()
    
    
    lazy var BalanceAmount: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        let attributed = NSAttributedString(string: "60.000.000 \n", attributes: [.font:UIFont.preferredFont(forTextStyle: .body),.foregroundColor:UIColor.darkGray])
        let mutableString = NSMutableAttributedString(string: "Some Balance", attributes: [.font:UIFont.systemFont(ofSize: 14, weight: .semibold),.foregroundColor: UIColor.darkGray])
        
        return label
    }()
    
    
    lazy var chevronImageView: UIImageView =
    {
        let myImage = UIImageView()
        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.clipsToBounds = true
        myImage.layer.masksToBounds = true
        myImage.image = UIImage(systemName: "chevron.right")?.withTintColor(appColor, renderingMode: .alwaysOriginal)
       
        return myImage
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
        contentView.addSubview(nameLabel)
        contentView.addSubview(chevronImageView)
        
        
        
    }
    
    
    fileprivate func config()
    {
        let stack = UIStackView(arrangedSubviews: [BalanceLable,AmountLable])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 2
        stack.distribution = .fillEqually
        
        contentView.addSubview(stack)
        
        NSLayoutConstraint.activate([stack.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor),
                                     self.trailingAnchor.constraint(equalToSystemSpacingAfter: stack.trailingAnchor, multiplier: 5)
        ])
        
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1),
                                     titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2)
        ])
        
        NSLayoutConstraint.activate([underlineView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2),
                                     underlineView.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 1),
                                     underlineView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor , constant: 4)
        ])
        
        NSLayoutConstraint.activate([nameLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2),
                                     nameLabel.topAnchor.constraint(equalToSystemSpacingBelow: underlineView.bottomAnchor, multiplier: 2)
        ])
        
        NSLayoutConstraint.activate([chevronImageView.centerYAnchor.constraint(equalTo: stack.centerYAnchor),
                                     self.trailingAnchor.constraint(equalToSystemSpacingAfter: chevronImageView.trailingAnchor, multiplier: 2),
                                     chevronImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: stack.trailingAnchor, multiplier: 1)
        ])
        
    }
}




