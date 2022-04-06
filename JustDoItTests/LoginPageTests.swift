//
//  LoginPageTests.swift
//  JustDoItTests
//
//  Created by Alejandro Ramos on 3/9/22.
//

import XCTest
@testable import JustDoIt

class LoginPageTests: XCTestCase {

    func testPassword() {
        let myPassword = LoginPage(email: "", password:"student");
        XCTAssertEqual("student",myPassword.password);
       }
     
    func testEmail() {
        let myEmail = LoginPage(email: "studentemail@csu.fullerton.edu", password:"");
        XCTAssertEqual("studentemail@csu.fullerton.edu",myEmail.email);
       }
    func testEmptyEmails() {
        let eprintemail = LoginPage(email: "", password:"student");
        XCTAssertEqual(false,eprintemail.alertsforvalid(alert: ""));
    }
    func testEmptyPasswords() {
        let eprintpassword = LoginPage(email: "studentemail@csu.fullerton.edu", password:"");
        XCTAssertEqual(false,eprintpassword.alertsforvalid(alert: ""));
    }
}

