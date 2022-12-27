//
//  OnboardingViewcontroller.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/27.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit

class OnboardingViewcontroller: UIViewController
{
    let stackview = UIStackView()
    
    private let onboardingImage: UIImageView =
    {
        let myImage = UIImageView()
        myImage.adjustsImageSizeForAccessibilityContentSizeCategory = true
        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.clipsToBounds = true
        myImage.image = UIImage(named: "delorean")
//        myImage.heightAnchor.constraint(equalToConstant: 180).isActive = true
      
        return myImage
    }()
    
    private let textLabel: UILabel =
    {
        let label = UILabel()
    
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Bankey is faster, easier to use, and has a brand new look and feel that will make you feel like you are back in the 80s."
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
    
}

extension OnboardingViewcontroller
{
    private func style()
    {
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.spacing = 20
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
    }
    
    private func layout()
    {
        stackview.addArrangedSubview(onboardingImage)
        stackview.addArrangedSubview(textLabel)
        view.addSubview(stackview)
        
        NSLayoutConstraint.activate([stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                     stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     stackview.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
                                     view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackview.trailingAnchor, multiplier: 2)
        
        ])
        
    }
}
