//
//  Calendar ViewController.swift
//  JustDoIt
//
//  Created by Alexander Zavaleta on 4/1/22.
//

import Foundation
import UIKit

protocol CalendarDelegate {
    func userDidEnterNewDate(date:Date)
}

class CalendarVC: UIViewController {
    @IBOutlet weak var ConfirmButton: UIButton!
    var selectedDate:Date? = Date()

    @IBOutlet var dateTxt: UITextField!
    var delegate:CalendarDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChanged(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size
         = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        dateTxt.inputView = datePicker
        dateTxt.text = formatDate(date: Date())
        print(datePicker.date)
        selectedDate = datePicker.date
        ConfirmButton.layer.cornerRadius = 5
    }
   
    @objc func dateChanged(datePicker:UIDatePicker) {
        selectedDate = datePicker.date
        dateTxt.text = formatDate(date: datePicker.date)
    }
    func formatDate(date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: date)
    }
    @IBAction func selectDate(_ sender: Any) {
        if (delegate != nil){
            delegate!.userDidEnterNewDate(date: selectedDate!)
            self.navigationController?.popViewController(animated: true)
        }
        
    }
}

////stores information
//struct assignmentduedate{
//    var date: String
//    init(_ date: String){
//        self.date = date
//    }
//}

