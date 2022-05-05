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
        let myPassword = LoginPage(email: "", password:"student",alert: "", signup: "");
        XCTAssertEqual("student",myPassword.password);
       }
     
    func testEmail() {
        let myEmail = LoginPage(email: "studentemail@csu.fullerton.edu", password:"",alert: "", signup: "");
        XCTAssertEqual("studentemail@csu.fullerton.edu",myEmail.email);
       }
    func testEmptyEmails() {
        let eprintemail = LoginPage(email: "", password:"student", alert: "", signup: "");
        XCTAssertEqual(false,eprintemail.alertsforvalid(alert: ""));
    }
    func testEmptyPasswords() {
        let eprintpassword = LoginPage(email: "studentemail@csu.fullerton.edu", password:"", alert: "", signup: "");
        XCTAssertEqual(false,eprintpassword.alertsforvalid(alert: ""));
    }
   
}

class RegisterPageTests: XCTestCase{
    func testPasswordMatchUps() {
        let passwordsMatch = RegisterPage(email: "", password: "schoolisCool8732&", repeatpassword: "schoolisCool8732&" )
        XCTAssertEqual(true, passwordsMatch.MatchPasswords(password: "schoolisCool8732&", repeatpassword: "schoolisCool8732&" ));
    }
}
