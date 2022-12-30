//
//  WelcomeViewController.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/30.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit

protocol WelcomeViewControllerDelegate: AnyObject {
    func didLogoutbuttonPressed()
}

class WelcomeViewController: UIViewController
{
    
    weak var delegate: WelcomeViewControllerDelegate?
    
    let stack  = UIStackView()
    
    private let welcomLabel: UILabel =
    {
        let label = UILabel()
        label.text = "Welcome"
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.numberOfLines = 0
        label.textColor = .darkGray
        return label
    }()
    
    let logouButton: UIButton =
    {
        let button = UIButton(type: .system)
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Logut", for:[])
        button.layer.cornerRadius = 5
        
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(handleLogout), for: .primaryActionTriggered)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layput()
    }
    
}
extension WelcomeViewController
{
    private func style()
    {
        view.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        
        welcomLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func layput()
    {
        stack.addArrangedSubview(welcomLabel)
        stack.addArrangedSubview(logouButton)
        
        
        view.addSubview(stack)
        
        NSLayoutConstraint.activate([ stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                      stack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

extension WelcomeViewController
{
    @objc func handleLogout()
    {
        delegate?.didLogoutbuttonPressed()
    }
}
