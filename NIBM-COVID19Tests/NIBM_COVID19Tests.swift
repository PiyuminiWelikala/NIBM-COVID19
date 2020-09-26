//
//  NIBM_COVID19Tests.swift
//  NIBM-COVID19Tests
//
//  Created by Sandaru on 9/26/20.
//  Copyright © 2020 Sandaru. All rights reserved.
//

import XCTest
@testable import NIBM_COVID19

class NIBM_COVID19Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAuthSuccess() throws {
        
        let email = "javatest98@gmail.com"
        let password = "abc123@#"
        
        let exp = expectation(description: "Successful sign in will give a boolean value")
        
        Services.login(email: email, password: password, completion: { success in XCTAssertTrue(success)
            exp.fulfill()
            
        })
        waitForExpectations(timeout: 10) { error in
            if let error = error {
                XCTFail("waitForExpectationsWithTimeout errored: \(error)")
            }
        }
    }
    func testAuthFailed() throws {
        
        let email = "test@gmail.com"
        let password = "1235"
        
        
        let exp = expectation(description: "Unsuccessful Sign In will give a false boolean value")
        
        Services.login(email: email, password: password, completion: { success in
            XCTAssertFalse(success)
            exp.fulfill()
        })
        
        waitForExpectations(timeout: 10) { error in
            if let error = error {
                XCTFail("waitForExpectationsWithTimeout errored: \(error)")
            }
        }
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
