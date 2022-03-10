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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    var loginObj = LoginPage(email: testEmail, password: testPassword)

    @IBAction func Email(_ sender: Any) {
    }
    @IBAction func Password(_ sender: Any) {
    }
    @IBAction func JustDoIt(_ sender: Any) {
    }
    
}

