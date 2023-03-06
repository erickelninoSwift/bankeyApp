//
//  TitleView.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/24.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit

class TitleView: UIView
{
    
    static let shared = TitleView()
    
    let stackview = UIStackView()
    
    
     var titleLeadingAnchor: NSLayoutConstraint?
     var titleleadingonScreen: CGFloat = 16
     var titleleadingOffScreen: CGFloat = -1000
    
    
    private let titlelabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Bankey"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = .black
       
        return label
    }()
    
    private let subtitlelabel: UILabel =
    {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Your permium source for All things Banking"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
       
       
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize
    {
        return CGSize(width: 200, height: 200)
    }
    
}

extension TitleView
{
    private func style()
    {
        self.backgroundColor = .white
        
    
//        stackview.translatesAutoresizingMaskIntoConstraints = false
//        stackview.axis = .vertical
//        stackview.spacing = 7
//        stackview.distribution = .fillProportionally
        
       
        
    }
    
    private func layout()
    {
//        stackview.addArrangedSubview(titlelabel)
//        stackview.addArrangedSubview(subtitlelabel)
//
//        self.addSubview(stackview)
//
//        stackview.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 5).isActive = true
//        self.trailingAnchor.constraint(equalToSystemSpacingAfter: stackview.trailingAnchor, multiplier: 5).isActive = true
//        stackview.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        stackview.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        self.addSubview(titlelabel)
        self.addSubview(subtitlelabel)
        
        titleLeadingAnchor = titlelabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: titleleadingOffScreen)
        titleLeadingAnchor?.isActive = true
        
        if titleLeadingAnchor?.constant == titleleadingonScreen
        {
            NSLayoutConstraint.activate([titlelabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
        }
        NSLayoutConstraint.activate([subtitlelabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2),
                                     subtitlelabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     subtitlelabel.topAnchor.constraint(equalToSystemSpacingBelow: titlelabel.bottomAnchor, multiplier: 1)
        ])
    }
}


