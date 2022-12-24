//
//  LoginView.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/24.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit

class LoginView: UIView
{
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

extension LoginView
{
    private func style()
    {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .systemBlue
    }
    
    private func layout()
    {
        
    }
}
