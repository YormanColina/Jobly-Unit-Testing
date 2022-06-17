//
//  ModelTests.swift
//  JoblyTests
//
//  Created by Apple on 17/06/22.
//

import XCTest
import Foundation
import ObjectMapper
@testable import Jobly

class ModelTest: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.url(forResource: "MockHome", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, Any> {
                    let home = Mapper<Home>().map(JSON: jsonResult)
                    
                    // Testing values of properties of home
                    XCTAssertNotNil(home)
                    
                    // Type of date of values
                    XCTAssertTrue(home?.widgets[0].values is [Categorie])
                    XCTAssertTrue(home?.widgets[1].values is [Job])
                    XCTAssertTrue(home?.widgets[2].values is [Job])
                    
                    // Properties of first widget
                    XCTAssertEqual(home?.widgets[0].type, "Categories")
                    XCTAssertEqual(home?.widgets[0].title, "Categories")
                    XCTAssertNotEqual(home?.widgets[0].id, "")
                    XCTAssertGreaterThan((home?.widgets[0].values.count)!, 0)
                    XCTAssertNotNil(home?.widgets[0].values as? [Categorie])
                    
                    // Properties of second widget
                    XCTAssertEqual(home?.widgets[1].type, "Jobs")
                    XCTAssertEqual(home?.widgets[1].title, "Recommended")
                    XCTAssertNotEqual(home?.widgets[1].id, "")
                    XCTAssertGreaterThan((home?.widgets[1].values.count)!, 0)
                    XCTAssertNotNil(home?.widgets[1].values as? [Job])
                    
                    // Properties of third widget
                    XCTAssertEqual(home?.widgets[2].type, "Jobs")
                    XCTAssertEqual(home?.widgets[2].title, "Populars")
                    XCTAssertNotEqual(home?.widgets[2].id, "")
                    XCTAssertGreaterThan((home?.widgets[2].values.count)!, 0)
                    XCTAssertNotNil(home?.widgets[2].values as? [Job])
                    
                    
                    // Properties of values of first widget
                    if let categories = home?.widgets[0].values as? [Categorie] {
                        for categorie in categories {
                            XCTAssertTrue(categorie.title != "" , "is diferrent")
                            XCTAssertTrue(categorie.image.contains("png") || categorie.image.contains("jpeg"))
                            XCTAssertNotEqual(categorie.color, "")
                            
                        }
                    }
                    
                    // Properties of values of second widget
                    if let jobs = home?.widgets[1].values as? [Job] {
                        for job in jobs {
                            XCTAssertNotEqual(job.description, "")
                            XCTAssertTrue(job.image.contains("png") || job.image.contains("jpeg"))
                            XCTAssertNotEqual(job.location, "")
                            XCTAssertTrue(job.location != "" , "is diferrent")
                            XCTAssertNotEqual(job.title, "")
                        }
                    }
                    
                    // Properties of values of third widget
                    if let jobs = home?.widgets[2].values as? [Job] {
                        for job in jobs {
                            XCTAssertNotEqual(job.description, "")
                            XCTAssertTrue(job.image.contains("png") || job.image.contains("jpeg"))
                            XCTAssertNotEqual(job.location, "")
                            XCTAssertTrue(job.location != "" , "is diferrent")
                            XCTAssertNotEqual(job.title, "")
                        }
                    }
                }
            } catch {
                // handle error
            }
        }
    }
}

