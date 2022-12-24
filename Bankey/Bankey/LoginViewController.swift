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
    

    
    private let loginButton : UIButton =
    {
        let button = UIButton(type: .system)
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Sign In", for:[])
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(handleSignInTapped), for: .primaryActionTriggered)
        return button
    }()
    
    
    
    private let ErroMessageLabel: UILabel =
    {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .systemRed
        label.numberOfLines = 0
        label.isHidden = false
        label.text = "There was an error with your password"
        
        return label
    }()
    
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
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        ErroMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    private func layout()
    {
        view.addSubview(login)
        view.addSubview(loginButton)
        view.addSubview(ErroMessageLabel)
        
        NSLayoutConstraint.activate([
            login.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            login.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: login.trailingAnchor, multiplier: 1)
            
        ])
        
        // button layout contraints
        
        NSLayoutConstraint.activate([ loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                      loginButton.topAnchor.constraint(equalToSystemSpacingBelow: login.bottomAnchor, multiplier: 2),
                                      loginButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
                                      view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginButton.trailingAnchor, multiplier: 1)
        ])
        
        NSLayoutConstraint.activate([ ErroMessageLabel.topAnchor.constraint(equalToSystemSpacingBelow: loginButton.bottomAnchor, multiplier: 2),
                                      ErroMessageLabel.leadingAnchor.constraint(equalTo: login.leadingAnchor),
                                      ErroMessageLabel.trailingAnchor.constraint(equalTo: login.trailingAnchor)
        
        ])
    }
}

extension LoginViewController
{
    @objc func handleSignInTapped(sender: UIButton)
    {
        ErroMessageLabel.isHidden.toggle()
    }
    
    private func login()
    {
        guard let username = user
    }
}

