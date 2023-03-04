//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Erick El nino on 2023/03/04.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import XCTest

@testable import Bankey

class Test: XCTestCase
{
    
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testDollardFormatted() throws
    {
        let local = Locale.current
        let currencySymbol = local.currencySymbol ?? ""
        let calendar = local.calendar
    
        
        let myformat  = formatter.dollarsFormatted(900000.00)
        
        XCTAssertEqual(myformat,"\(currencySymbol)900,000.00")
    }
}
