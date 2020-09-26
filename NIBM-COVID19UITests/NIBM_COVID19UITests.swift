//
//  NIBM_COVID19UITests.swift
//  NIBM-COVID19UITests
//
//  Created by Sandaru on 9/26/20.
//  Copyright © 2020 Sandaru. All rights reserved.
//

import XCTest

class NIBM_COVID19UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
      
        
        _ = XCUIApplication()
        let emailTextField = app.textFields["Email"]
        emailTextField.tap()
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        
        let backButton = app.navigationBars["NIBM_COVID19.SignUpView"].buttons["Back"]
        backButton.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Register"]/*[[".buttons[\"Register\"].staticTexts[\"Register\"]",".staticTexts[\"Register\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        emailTextField.tap()
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        
        let userTypeTextField = app.textFields["User Type"]
        userTypeTextField.tap()
        userTypeTextField.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Student"]/*[[".pickers.pickerWheels[\"Student\"]",".pickerWheels[\"Student\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        app/*@START_MENU_TOKEN@*/.staticTexts["Sign Up"]/*[[".buttons[\"Sign Up\"].staticTexts[\"Sign Up\"]",".staticTexts[\"Sign Up\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        emailTextField.tap()
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Login"]/*[[".buttons[\"Login\"].staticTexts[\"Login\"]",".staticTexts[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
