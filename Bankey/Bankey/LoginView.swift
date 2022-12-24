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
    let ericktextfield = UITextField()
    
    
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
        ericktextfield.translatesAutoresizingMaskIntoConstraints = false
        ericktextfield.placeholder = "Username"
        ericktextfield.delegate = self
        ericktextfield.textColor = .white
        ericktextfield.font = UIFont.systemFont(ofSize: 14)
        
    }
    
    private func layout()
    {
        self.addSubview(ericktextfield)
        NSLayoutConstraint.activate([
        ericktextfield.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1),
        ericktextfield.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1)
        ])
        
    }
}
//Textfield delegate
extension LoginView: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        ericktextfield.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let erickfield = ericktextfield.text else {return}
        print("DEBUG: \(erickfield)")
    }
}
