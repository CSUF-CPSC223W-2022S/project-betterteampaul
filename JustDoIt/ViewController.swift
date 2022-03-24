//
//  ViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 2/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDate()
    }
    

    let datepick = UIDatePicker()
    
    
    @IBOutlet weak var load: UIActivityIndicatorView!
    
    func createDate(){
        //center the date
        dateTxt.textAlignment = .center
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //done button
        let donButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(done))
        toolbar.setItems([donButton], animated: true)
        
        //assign toolbar
        dateTxt.inputAccessoryView = toolbar
        
        //date to text field
        dateTxt.inputView = datepick
        
        //date mode
        datepick.datePickerMode = .date
    }
    @objc func done(){
        //format
        let format = DateFormatter()
        format.dateStyle = .medium
        format.timeStyle = .none
        
        dateTxt.text = format.string(from: datepick.date)
        self.view.endEditing(true)
        info(dateTxt.text!)
    }
}

//stores information
struct info{
    var date: String
    init(_ date: String){
        self.date = date
    }
}

