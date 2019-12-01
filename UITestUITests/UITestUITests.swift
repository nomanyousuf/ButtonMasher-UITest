//
//  UITestUITests.swift
//  UITestUITests
//
//  Created by Noman Yousuf on 11/27/19.
//  Copyright © 2019 colors. All rights reserved.
//

import XCTest

class UITestUITests: XCTestCase {
    
    var app : XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        app = XCUIApplication()
        app.launch()
       
    }
//anotherTest
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app = nil
        super.tearDown()
    }

    func testChangeColor_ButtonPressed_ShouldCreateAlabel(){
        app.buttons["Get colors"].tap()
        XCTAssertTrue(app.staticTexts["Label text"].exists)
    }
    
    
  
}
