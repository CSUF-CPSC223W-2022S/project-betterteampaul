//
//  JustDoItTests.swift
//  JustDoItTests
//
//  Created by Guillian Daguplo on 2/21/22.
//

import XCTest
@testable import JustDoIt

class JustDoItTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testmonth1(){
        let monthobj = Month(1)
        XCTAssertEqual(monthobj.name, "January")
    }
    func testmonth2(){
        let monthobj = Month(2)
        XCTAssertEqual(monthobj.name, "February")
    }
    func testmonth3(){
        let monthobj = Month(3)
        XCTAssertEqual(monthobj.name, "March")
    }
    func testmonth4(){
        let monthobj = Month(4)
        XCTAssertEqual(monthobj.name, "April")
    }
    func testmonth5(){
        let monthobj = Month(5)
        XCTAssertEqual(monthobj.name, "May")
    }
    func testmonth6(){
        let monthobj = Month(6)
        XCTAssertEqual(monthobj.name, "June")
    }
    func testmonth7(){
        let monthobj = Month(7)
        XCTAssertEqual(monthobj.name, "July")
    }
    func testmonth8(){
        let monthobj = Month(8)
        XCTAssertEqual(monthobj.name, "August")
    }
    func testmonth9(){
        let monthobj = Month(9)
        XCTAssertEqual(monthobj.name, "September")
    }
    func testmonth10(){
        let monthobj = Month(10)
        XCTAssertEqual(monthobj.name, "October")
    }
    func testmonth11(){
        let monthobj = Month(11)
        XCTAssertEqual(monthobj.name, "November")
    }
    func testmonth12(){
        let monthobj = Month(12)
        XCTAssertEqual(monthobj.name, "December")
    }
    func testdays(){
        let dayobj = Days(-3)
        XCTAssertEqual(dayobj.days, 1)
    }
    func testdate(){
        let dateobj = info("March,22 2022");
        XCTAssertEqual(dateobj.date,"March,22 2022")
    }

}
