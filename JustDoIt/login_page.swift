//
//  login_page.swift
//  JustDoIt
//
//  Created by Alejandro Ramos on 2/21/22.
//

import Foundation

struct LoginPage {
    // Properties
    var email: String
    var password: String
    var alert: String
    var signup: String

    // initilizer
    init(email: String, password: String, alert: String, signup: String) {
        self.email = email
        self.password = password
        self.alert = alert
        self.signup = signup
    }

    // ****************************************Methods********************************//
    // validate an email for the right format
    func isValidEmail(email: String?) -> Bool {
        guard email != nil else {
            return false
        }

        //    There’s some text before the @
        //    There’s some text after the @
        //    There’s at least 2 alpha characters after a .
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let pred = NSPredicate(format: "SELF MATCHES %@", regEx)

        return pred.evaluate(with: email)
    }

    //    There’s at least one uppercase letter
    //    There’s at least one lowercase letter
    //    There’s at least one numeric digit
    //    The text is at least 8 characters long
    func isValidPassword(password: String?) -> Bool {
        guard password != nil else {
            return false
        }

        // at least one uppercase,
        // at least one digit
        // at least one lowercase
        // 8 characters total
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passwordTest.evaluate(with: password)
    }

    func alertsforvalid(alert: String) -> Bool {
        if isValidPassword(password: "") == false {
            print("Try entering a password!")
            return false
        } else { return true }

        if isValidEmail(email: "") == false {
            print("Try entering a e-mail!")
            return false
        } else { return true }
    }
}

// registering
struct RegisterPage {
    // Properties
    var email: String
    var password: String
    var repeatpassword: String

    // initilizer
    init(email: String, password: String, repeatpassword: String) {
        self.email = email
        self.password = password
        self.repeatpassword = repeatpassword
    }

    // makes sure to math new user's passwords
    func MatchPasswords(password: String, repeatpassword: String) -> Bool {
        if password == repeatpassword {
            print("Passwords Match!")
            return true
        }
        return false
    }

    func isValidEmail(email: String?) -> Bool {
        guard email != nil else {
            return false
        }

        //    There’s some text before the @
        //    There’s some text after the @
        //    There’s at least 2 alpha characters after a .
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let pred = NSPredicate(format: "SELF MATCHES %@", regEx)

        return pred.evaluate(with: email)
    }

    //    There’s at least one uppercase letter
    //    There’s at least one lowercase letter
    //    There’s at least one numeric digit
    //    The text is at least 8 characters long
    func isValidPassword(password: String?) -> Bool {
        guard password != nil else {
            return false
        }

        // at least one uppercase,
        // at least one digit
        // at least one lowercase
        // 8 characters total
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passwordTest.evaluate(with: password)
    }
}

// will be added in a future update
struct User {
    // username
    // password
    // assingmentlist will be added soon
    // notification config (Gear)
}
