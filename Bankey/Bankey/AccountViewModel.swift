//
//  AccountViewModel.swift
//  Bankey
//
//  Created by Erick El nino on 2023/02/11.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import Foundation

enum AccountType: String
{
    case Banking
    case Creditcard
    case Investment
    
    var description: String
    {
        switch self
        {
        case .Banking:
            return "Banking"
        case .Creditcard:
            return "Creditcard"
        case .Investment:
            return "Investment"
        }
    }
}

struct AccountViewModel
{
    var accountType: AccountType
    var accountName: String
    var balance: Decimal
}
