//
//  UITestUITests.swift
//  UITestUITests
//
//  Created by name on 2019/6/17.
//  Copyright © 2019 test. All rights reserved.
//

import XCTest

class UITestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testLogin() {
        let userName = "onevcat"
        let password = "123"
        
        let app = XCUIApplication()
        
        let userNameTextField = app.textFields["username"]
        userNameTextField.tap()
                userNameTextField.typeText(userName)
        
        let passwordTextField = app.secureTextFields["password"]
        passwordTextField.tap()
        passwordTextField.typeText(password)
        
        app.buttons["login"].tap()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
