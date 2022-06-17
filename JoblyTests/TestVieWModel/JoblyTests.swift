//
//  JoblyTests.swift
//  JoblyTests
//
//  Created by Jyferson Colina on 18/03/22.
//

import XCTest
import ObjectMapper
@testable import Jobly

class JoblyTests: XCTestCase {
    
    var homeviewModel: HomeViewModel!
    
    override func setUpWithError() throws {
        homeviewModel = HomeViewModel(apiService: ApiServicesFake())
    }
    
    func testArquitect() {
        let expectation = XCTestExpectation(description: "Calling services..")
        
        homeviewModel.configurateHome {
            XCTAssertEqual(self.homeviewModel.home.widgets[0].type, "Categories")
            XCTAssertEqual(self.homeviewModel.home.widgets[1].type, "Jobs")
            XCTAssertEqual(self.homeviewModel.home.widgets[2].type, "Jobs")
            
            XCTAssertEqual(self.homeviewModel.home.widgets[0].title, "Categories")
            XCTAssertEqual(self.homeviewModel.home.widgets[1].title, "Recommended")
            XCTAssertEqual(self.homeviewModel.home.widgets[2].title, "Populars")
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10.0)
    }
}

