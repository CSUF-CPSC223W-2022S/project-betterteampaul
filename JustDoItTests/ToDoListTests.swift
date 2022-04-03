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
        let asgmtNilDetails = Assignment(_assignmentName: "Lab 05", _assignmentDetails: nil, _dueDate: "3/10/22", _assigmentLink: nil)
        let asgmtNonNilDetails = Assignment(_assignmentName: "Project Check-in 2", _assignmentDetails: "Create Structs and Test Cases", _dueDate: "3/9/22", _assigmentLink: "https://github.com/CSUF-CPSC223W-2022S/project-betterteampaul/tree/assignment_display")
    }
    
    func testAssignmentNames() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getAssignmentName(),"Lab 05")
        XCTAssertEqual(cases.asgmtNonNilDetails.getAssignmentName(),"Project Check-in 2")
    }
    func testAssignmentDetails() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getAssignmentDetails(), nil)
        XCTAssertEqual(cases.asgmtNonNilDetails.getAssignmentDetails(), "Create Structs and Test Cases")
    }
    func testAssignmentDueDates() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getDueDate(), "3/10/22")
        XCTAssertEqual(cases.asgmtNonNilDetails.getDueDate(), "3/9/22")
    }
    func testAssignmentLink() {
        let cases = TestCases()
        XCTAssertEqual(cases.asgmtNilDetails.getAssignmentLink(), nil)
        XCTAssertEqual(cases.asgmtNonNilDetails.getAssignmentLink(), "https://github.com/CSUF-CPSC223W-2022S/project-betterteampaul/tree/assignment_display")
    }
    
    
    
    
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
