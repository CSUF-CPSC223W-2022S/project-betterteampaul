//
//  TodoListViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/2/22.
//

import Foundation
import UIKit

class ToDoViewController: UIViewController {
//    Testing Assignments
    var assignment:Assignment?
    var assignments: [Assignment]? = [Assignment("Project Checkin 1", dueBy: "Passed", details: "Create Structures", status: .finished), Assignment("Project Checkin 2", dueBy: "Passed", details: nil, status: .finished), Assignment("Project Checkin 3", dueBy: "Passed", details: "Working UI", status: .finished), Assignment("Project Checkin 4", dueBy: "4/6/2022", details: "Merged and ready 2 go", status: .inPrgrs)]
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        if let toAddAssignment = assignment {
            assignments?.append(toAddAssignment)
        }
    }
    //Users can edit assignments, mutate properties
    @IBAction func openSettings(_ sender: Any) {
     print("Opening Settings")
    }
    //Will allow for creation of new assignment to display on table view "AssignmentList"
    @IBAction func newAssignment(_ sender: Any) {
     print("Creating New Assignment")
    
    }
    
    
}
extension ToDoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
}

extension ToDoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignments!.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = assignments![indexPath.row].getName()
        return cell
    }
    
}
