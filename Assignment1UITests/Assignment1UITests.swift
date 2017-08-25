//
//  Assignment1UITests.swift
//  Assignment1UITests
//
//  Created by Riko Pratama Laimena on 8/18/17.
//  Copyright © 2017 Riko Pratama Laimena. All rights reserved.
//

import XCTest

class Assignment1UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func UITesting() {
        let app = XCUIApplication()
        let tabBars = XCUIApplication().tabBars
        app.launch()
        XCTAssertEqual(app.images.count, 1)
        XCTAssertEqual(app.buttons.count, 2)
        app.buttons["Find Me ATM"].tap()
        XCTAssertEqual(app.images.count, 1)
        XCTAssertEqual(app.buttons.count, 1)
        tabBars.buttons["Satellite"].tap()
        tabBars.buttons["Normal"].tap()
        app.buttons["back"].tap()
        app.buttons["List of ATM"].tap()
        XCTAssertEqual(app.buttons.count, 1)
        XCUIApplication().tables.staticTexts["Commonwealth"].tap()
        XCTAssertEqual(app.images.count, 1)
        XCTAssertEqual(app.buttons.count, 1)
    }
    
}
