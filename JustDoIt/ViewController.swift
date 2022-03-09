//
//  ViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 2/21/22.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var AssignmentList: UITableView!
    //Users can edit assignments, mutate properties
    @IBAction func assignmentEdit(_ sender: Any) {
    }
    //Will allow for creation of new assignment to display on table view "AssignmentList"
    @IBAction func newAssignment(_ sender: Any) {
    }
    //Will allow for deletion of selected assignment to display on table view "AssignmentList"
    @IBAction func removeAssignment(_ sender: Any) {
    }
    //Users can get more information on a given assignment
    @IBAction func assignmentInfo(_ sender: Any) {
    }
}

