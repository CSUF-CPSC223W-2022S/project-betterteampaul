//
//  TodoListViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/2/22.
//

import Foundation
import UIKit

class ToDoViewController: UIViewController {

    @IBOutlet var cellLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        tableView.delegate = self
//        tableView.dataSource = self
    }

    //Users can edit assignments, mutate properties
    @IBAction func openSettings(_ sender: Any) {
     print("Opening Settings")
    }
    //Will allow for creation of new assignment to display on table view "AssignmentList"
    @IBAction func newAssignment(_ sender: Any) {
     print("Creating New Assignment")
    }
    //Will allow for deletion of selected assignment to display on table view "AssignmentList"
    @IBAction func removeAssignment(_ sender: Any) {
     print("Removing Assignment")
    }
    //Users can get more information on a given assignment
    @IBAction func assignmentInfo(_ sender: Any) {
     print("Getting Assignment Info")
    }
}
