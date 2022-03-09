//
//  calendar.swift
//  JustDoItTests
//
//  Created by Alexander Zavaleta on 3/8/22.
//

import XCTest

class calendar: XCTestCase {

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
        let monthobj = month(1)
        XCTAssertEqual(monthobj.name, "January")
    }
    func testmonth2(){
        let monthobj = month(2)
        XCTAssertEqual(monthobj.name, "February")
    }
    func testmonth3(){
        let monthobj = month(3)
        XCTAssertEqual(monthobj.name, "March")
    }
    func testmonth4(){
        let monthobj = month(4)
        XCTAssertEqual(monthobj.name, "April")
    }
    func testmonth5(){
        let monthobj = month(5)
        XCTAssertEqual(monthobj.name, "May")
    }
    func testmonth6(){
        let monthobj = month(6)
        XCTAssertEqual(monthobj.name, "June")
    }
    func testmonth7(){
        let monthobj = month(7)
        XCTAssertEqual(monthobj.name, "July")
    }
    func testmonth8(){
        let monthobj = month(8)
        XCTAssertEqual(monthobj.name, "August")
    }
    func testmonth9(){
        let monthobj = month(9)
        XCTAssertEqual(monthobj.name, "September")
    }
    func testmonth10(){
        let monthobj = month(10)
        XCTAssertEqual(monthobj.name, "October")
    }
    func testmonth11(){
        let monthobj = month(11)
        XCTAssertEqual(monthobj.name, "November")
    }
    func testmonth12(){
        let monthobj = month(12)
        XCTAssertEqual(monthobj.name, "December")
    }
    func testdays(){
        let dayobj = days(-3)
        XCTAssertEqual(dayobj.name, 1)
    }

}
