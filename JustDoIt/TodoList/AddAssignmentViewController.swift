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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddAssignment(_ sender: Any) {
        if (delegate != nil){
            let assignment = Assignment(AssignmentName.text!, dueBy: dueDate.text!, details: notes.text!, status: .notStrtd)
            delegate!.userDidEnterNewAsgnmnt(assignment: assignment)
            self.navigationController?.popViewController(animated: true)
        }
        
    }


}
