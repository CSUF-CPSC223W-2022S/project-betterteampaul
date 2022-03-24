//
//  ViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 2/21/22.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

    //Users can edit assignments, mutate properties
    @IBAction func assignmentEdit(_ sender: Any) {
     print("Editing Assignment")
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

let ex = Assignments("Project Check-in 3", dueBy: "3/23/22", details: "Woop", status: Status.inPrgrs)

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(ex.assignmentName)")
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "asgnmnts", for: indexPath)
        cell.textLabel?.text = ex.assignmentName
        return cell
    }
    
    
    
}

enum Status {
    case notStrtd
    case inPrgrs
    case finished
}

class Assignments{
    init (_ _assignmentName: String,dueBy _dueDate: String,details _assignmentDetails: String?,status _assigmentStatus: Status? ) {
        assignmentName = _assignmentName
        assignmentDetails = _assignmentDetails
        status = _assigmentStatus
        dueDate = _dueDate
    }
    
    func getAssignmentName() -> String {
        return assignmentName
    }
    
    func getDueDate() -> String {
        return dueDate
    }
    func getAssignmentDetails() -> String? {
        return assignmentDetails
    }
    func getAssignmentStatus() -> Status? {
        return status
    }
//    Assignments should always have a name, and
    var assignmentName: String
    var dueDate: String
    var assignmentDetails: String?
    var status: Status?
}

