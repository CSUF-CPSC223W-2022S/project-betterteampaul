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
        XCTAssertEqual(0,0)
    }
    struct TestCases {
        let asgmtNilDetails = Assignment("Lab 05", dueBy: Date(), details: nil, status: nil)
        let asgmtNonNilDetails = Assignment("Project Check-in 2", dueBy: Date(), details: "Create Structs and Test Cases" , status: Status.finished)
    }
    
    func testAssignmentNames() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getName(),"Lab 05")
        XCTAssertEqual(cases.asgmtNonNilDetails.getName(),"Project Check-in 2")
    }
    func testAssignmentDetails() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getDetails(), nil)
        XCTAssertEqual(cases.asgmtNonNilDetails.getDetails(), "Create Structs and Test Cases")
    }
    func testAssignmentDueDates() {
        let cases = TestCases()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        XCTAssertEqual(cases.asgmtNilDetails.getDueDate()?.formatted(), Date().formatted())
        XCTAssertEqual(cases.asgmtNonNilDetails.getDueDate()?.formatted(), Date().formatted())
    }
    func testStatus() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getStatus(), nil)
        XCTAssertEqual(cases.asgmtNonNilDetails.getStatus(), Status.finished)
    }
   
    
    
    
    
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
