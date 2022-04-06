//
//  ViewController.swift
//  JustDoIt
//
//  Created by Alejandro Ramos on 2/21/22.
//

import UIKit

var testEmail: String = "studentemail@csu.fullerton.edu"
var testPassword: String = "student"
var testCheck: String = "student"

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
   
   // var loginObj = LoginPage(email: testEmail, password: testPassword)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameTextField.text
    }
    
}

