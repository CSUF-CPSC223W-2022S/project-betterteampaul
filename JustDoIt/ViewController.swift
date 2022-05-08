//
//  ViewController.swift
//  JustDoIt
//
//  Created by Alejandro Ramos on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    // login page
    @IBOutlet var usernameTextField: UITextField!

    @IBOutlet var invalid: UILabel!

    @IBOutlet var passwordTextField: UITextField!

    // var loginObj = LoginPage(email: testEmail, password: testPassword)

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if usernameTextField.text == "student@csu.fullerton.edu", passwordTextField.text == "student", identifier == "login" {
        if usernameTextField.text == "", passwordTextField.text == "", identifier == "login" {
            return true
        } else if identifier == "signup" {
            return true
        } else {
            invalid.text = "Invalid username or password"
            return false
        }
    }
}
