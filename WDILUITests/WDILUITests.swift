//
//  WDILUITests.swift
//  WDILUITests
//
//  Created by Macallan on 7/12/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

import XCTest

class WDILUITests: XCTestCase {
        
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
    
    func testAddEvent() {
        
        let app = XCUIApplication()
        app.navigationBars["When Did I Last?"].buttons["Add"].tap()
        
        let eventTitleTextField = app.textFields["Event Title"]
        
        eventTitleTextField.tap()
        eventTitleTextField.typeText("Migraine")
        
        let eventDescriptionTextField = app.textFields["Event Description"]
        eventDescriptionTextField.tap()
        eventDescriptionTextField.typeText("Use this to see how often I get migraines")
        
        app.navigationBars["Add Event"].buttons["Save"].tap()
        
        let table = app.tables
        let migraineCell = table.cells.matchingIdentifier("Migraine").elementBoundByIndex(0)
        XCTAssertTrue(migraineCell.exists == true)
        
        
    }
    
}
