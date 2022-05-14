//
//  SignUpViewController.swift
//  JustDoIt
//
//  Created by Alejandro Ramos on 5/4/22.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet var usernsignup: UITextField!
    @IBOutlet var userpassword: UITextField!
    @IBOutlet var userpassword2: UITextField!

    @IBOutlet var pwordmatch: UILabel!

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userpassword.text == "student1", userpassword2.text == "student1" {
            return true
        }
        else {
            pwordmatch.text = "Passwords don't match"
            return false
        }
    }
}
