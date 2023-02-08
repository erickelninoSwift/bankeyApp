//
//  AccountSummaryHeaderView.swift
//  Bankey
//
//  Created by Erick El nino on 2023/02/07.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit

class AccountSummaryHeaderView: UIView
{
    
    static let AccountsummaryID = "AccountSummaryHeaderView"
    
    static let rowheight: CGFloat = 80
    
    @IBOutlet var ContentView: UIView!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        style()
        layout()

    }
    
    
    override var intrinsicContentSize: CGSize
    {
        return CGSize(width: UIView.noIntrinsicMetric, height: 144)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AccountSummaryHeaderView
{
    private func style()
    {
        let bundle = Bundle(for: AccountSummaryHeaderView.self)
        bundle.loadNibNamed("AccountSummaryHeaderView", owner: self, options: nil)
        self.addSubview(ContentView)
        ContentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout()
    {
        NSLayoutConstraint.activate([ContentView.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0),
                                     ContentView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 0),
                                     self.trailingAnchor.constraint(equalToSystemSpacingAfter: ContentView.trailingAnchor, multiplier: 0),
                                     self.bottomAnchor.constraint(equalToSystemSpacingBelow: ContentView.bottomAnchor, multiplier: 0)
        ])
    }
}
