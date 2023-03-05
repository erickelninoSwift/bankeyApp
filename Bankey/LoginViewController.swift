//
//  ViewController.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/24.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit
protocol LoginViewControllerDelegate: AnyObject
{
    func didLogin()
}

class LoginViewController: UIViewController {
    
    let loginViewField = LoginView()
    
    let titleViewContainer = TitleView()
    
   private let activityIndicator: UIActivityIndicatorView =
    {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.heightAnchor.constraint(equalToConstant: 20).isActive = true
        indicator.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        return indicator
    }()
    
    weak var delegate: LoginViewControllerDelegate?
    
    lazy var loginButton : UIButton =
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
    
    var username: String?
    {
        return loginViewField.usernametextfield.text
    }
    
    var password: String?
    {
        return loginViewField.passwordtextfield.text
    }
    
    
    private let ErroMessageLabel: UILabel =
    {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .systemRed
        label.numberOfLines = 0
        label.isHidden = true
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
        loginViewField.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        ErroMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        titleViewContainer.translatesAutoresizingMaskIntoConstraints = false
        titleViewContainer.clipsToBounds = true
        
    }
    
    
    private func layout()
    {
        view.addSubview(titleViewContainer)
        view.addSubview(loginViewField)
        view.addSubview(loginButton)
        view.addSubview(ErroMessageLabel)
        
        NSLayoutConstraint.activate([titleViewContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     titleViewContainer.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 15),
                                     titleViewContainer.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
                                     view.trailingAnchor.constraint(equalToSystemSpacingAfter: titleViewContainer.trailingAnchor, multiplier: 3)
        ])
        
        NSLayoutConstraint.activate([
            loginViewField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginViewField.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginViewField.trailingAnchor, multiplier: 3)
            
        ])
        
        // button layout contraints
        
        NSLayoutConstraint.activate([ loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                      loginButton.topAnchor.constraint(equalToSystemSpacingBelow: loginViewField.bottomAnchor, multiplier: 2),
                                      loginButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
                                      view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginButton.trailingAnchor, multiplier: 3)
        ])
        
        NSLayoutConstraint.activate([ ErroMessageLabel.topAnchor.constraint(equalToSystemSpacingBelow: loginButton.bottomAnchor, multiplier: 2),
                                      ErroMessageLabel.leadingAnchor.constraint(equalTo: loginViewField.leadingAnchor),
                                      ErroMessageLabel.trailingAnchor.constraint(equalTo: loginViewField.trailingAnchor)
        
        ])
        
        view.addSubview(activityIndicator)
        activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
}

extension LoginViewController
{
    @objc func handleSignInTapped(sender: UIButton)
    {
        guard let username = username,let password = password else {
            assertionFailure("Username/Password should not be nil")
            return
            
        }
        if username.isEmpty || password.isEmpty
        {
            configureView(message: "username / password can not be empty")
        }
        if username == "" && password == ""
        {
           
            activityIndicator.startAnimating()
            activityIndicator.stopAnimating()
            login()
        }else
        {
           
        }
    }
    
    private func login()
    {
        delegate?.didLogin()
    }
    
    private func configureView(message:String)
    {
        ErroMessageLabel.isHidden = false
        ErroMessageLabel.text = message
    }
}

