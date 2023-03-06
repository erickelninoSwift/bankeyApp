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
     let usernametextfield = UITextField()
     let passwordtextfield = UITextField()
     let stackView = UIStackView()
    
    
     lazy var divider: UIView =
    {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view.backgroundColor = .lightGray
        return view
    }()
    
   
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LoginView
{
    private func style()
    {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .secondarySystemBackground
        
        usernametextfield.translatesAutoresizingMaskIntoConstraints = false
        usernametextfield.placeholder = "Username"
        usernametextfield.delegate = self
        usernametextfield.textColor = .darkGray
        usernametextfield.font = UIFont.systemFont(ofSize: 16)
        
        
        //Password textfield
        passwordtextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordtextfield.placeholder = "Password"
        passwordtextfield.delegate = self
        
        passwordtextfield.textColor = .darkGray
        passwordtextfield.isSecureTextEntry = true
        passwordtextfield.font = UIFont.systemFont(ofSize: 16)
        passwordtextfield.enabletoggle()
        
        divider.translatesAutoresizingMaskIntoConstraints = false
        
        // Stackview
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
       
        
    }
    
    private func layout()
    {
        stackView.addArrangedSubview(usernametextfield)
        stackView.addArrangedSubview(divider)
        stackView.addArrangedSubview(passwordtextfield)
        
        self.addSubview(stackView)
        
        NSLayoutConstraint.activate([
        stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1),
        stackView.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1),
        self.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
        self.bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        
        ])
        
    }
}
//Textfield delegate
extension LoginView: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernametextfield.endEditing(true)
        passwordtextfield.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }

  
}
