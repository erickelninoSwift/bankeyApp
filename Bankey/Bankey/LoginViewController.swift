//
//  ViewController.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/24.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let login = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
    }
}

extension LoginViewController
{
    private func style()
    {
        login.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
    }
    
    
    private func layout()
    {
        view.addSubview(login)
        
        NSLayoutConstraint.activate([
            login.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            login.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: login.trailingAnchor, multiplier: 1)
        ])
    }
}

