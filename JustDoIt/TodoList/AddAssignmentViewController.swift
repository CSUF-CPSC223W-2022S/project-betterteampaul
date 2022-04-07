//
//  AddAssignmentViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/6/22.
//

import UIKit

class AddAssignmentViewController: UIViewController {
    var assignmentList:[Assignment]?
    @IBOutlet var AssignmentName: UITextField!
    @IBOutlet weak var dueDate: UITextField!
    @IBOutlet weak var status: UITextField!
    @IBOutlet weak var notes: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let receiverVC = segue.destination as! ToDoViewController
        let assignment = Assignment(AssignmentName.text!, dueBy: dueDate.text!, details: notes.text!, status: .notStrtd)
        receiverVC.assignments?.append(assignment)
        
        
    }
    @IBAction func AddAssignment(_ sender: Any) {
        if var assignmentList = assignmentList {
            assignmentList.append(Assignment(AssignmentName.text!, dueBy: dueDate.text!, details: notes.text!, status: .notStrtd))
        }
    }
    

}
