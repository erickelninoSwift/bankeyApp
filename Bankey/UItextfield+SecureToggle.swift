//
//  UItextfield+SecureToggle.swift
//  Bankey
//
//  Created by Erick El nino on 2023/03/05.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit

let passwordButton = UIButton(type: .custom)
extension UITextField
{
    func enabletoggle()
    {
        passwordButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        passwordButton.setImage(UIImage(systemName: "eye.slash.fill"), for: .selected)
        
        passwordButton.addTarget(self, action: #selector(Handlepassowrdview(_:)), for: .touchUpInside)
        
        self.rightView = passwordButton
        self.rightViewMode = .always
    }
    
    
    @objc func Handlepassowrdview(_ sender: Any)
    {
        self.isSecureTextEntry.toggle()
        passwordButton.isSelected.toggle()
    }
}


