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
    var formater :CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formater = CurrencyFormatter()
    }
    
    
    func testConvertoDecimal() throws
    {
        let mysample = formater.breakIntoDollarsAndCents(700.90)
        
        XCTAssertEqual(mysample.0, "700")
        XCTAssertEqual(mysample.1, "90")
    }
    
}
