//
//  TodoListViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/2/22.
//

import Foundation
import UIKit

class ToDoViewController: UIViewController, DataEnteredDelegate{
    var assignments: [Assignment]? = [Assignment("Project Checkin 1", dueBy: "Passed", details: "Create Structures", status: .finished), Assignment("Project Checkin 2", dueBy: "Passed", details: nil, status: .finished), Assignment("Project Checkin 3", dueBy: "Passed", details: "Working UI", status: .finished), Assignment("Project Checkin 4", dueBy: "4/6/2022", details: "Merged and ready 2 go", status: .inPrgrs)]
    
    @IBOutlet var tableView: UITableView!
    
    func userDidEnterNewAsgnmnt(assignment: Assignment) {
        assignments?.append(assignment)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "YourAsgnmts2AddAsgnmnts" {
            let secondVC:AddAssignmentViewController = segue.destination as! AddAssignmentViewController
            secondVC.delegate = self
        }
    }
    
    @IBAction func AddAssignment(_ sender: Any) {
    }
    @IBAction func OpenSettings(_ sender: Any) {
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
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            assignments?.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
}
