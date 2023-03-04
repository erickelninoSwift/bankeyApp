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
    
    let imageName: String
    let onboardingtext:String
    
   
    
    
    lazy var onboardingImage: UIImageView =
    {
        let myImage = UIImageView()
        myImage.adjustsImageSizeForAccessibilityContentSizeCategory = true
        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.image = UIImage(named: imageName)
        
        myImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        myImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
    

        return myImage
    }()
    
    lazy var textLabel: UILabel =
    {
        let label = UILabel()
    
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.text = onboardingtext
        return label
    }()
    

     init(Image: String,onboadingText: String) {
        self.onboardingtext = onboadingText
        self.imageName = Image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
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

extension OnboardingViewcontroller
{
    @objc func HandleClose()
    {
        print("DEBUG: Close")
    }
}
