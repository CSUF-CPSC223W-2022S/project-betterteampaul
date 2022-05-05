//
//  AddAssignmentViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/6/22.
//

import UIKit
protocol DataEnteredDelegate {
    func userDidEnterNewAsgnmnt(assignment:Assignment)
}
class AddAssignmentViewController: UIViewController {
    @IBOutlet weak var AssignmentName: UITextField!
    @IBOutlet weak var dueDate: UITextField!
    @IBOutlet weak var notes: UITextField!
    
    var delegate:DataEnteredDelegate? = nil
    var currentDate = Date()
    let formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChanged(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size
         = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        dueDate.inputView = datePicker
        dueDate.text = formatDate(date: Date())
        currentDate = datePicker.date
    }
    @objc func dateChanged(datePicker:UIDatePicker) {
        currentDate = datePicker.date
        dueDate.text = formatDate(date: datePicker.date)
    }
    func formatDate(date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: date)
    }

    @IBAction func AddAssignment(_ sender: Any) {
        if (delegate != nil){
//            dueBy currently assgined to nil make sure its fixed when you get date
            let assignment = Assignment(AssignmentName.text!, dueBy: currentDate, details: notes.text!, status: .notStrtd)
//            let assignment = Assignment()
            delegate?.userDidEnterNewAsgnmnt(assignment: assignment)
            self.navigationController?.popViewController(animated: true)
        }
        
    }
}
