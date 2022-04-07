//
//  TodoListViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/2/22.
//

import Foundation
import UIKit

class ToDoViewController: UIViewController, DataEnteredDelegate{
    var assignments: [Assignment]? = [Assignment("Project Checkin 1", dueBy: nil, details: "Create Structures", status: .finished), Assignment("Project Checkin 2", dueBy: nil, details: nil, status: .finished), Assignment("Project Checkin 3", dueBy: nil, details: "Working UI", status: .finished), Assignment("Project Checkin 4", dueBy: nil, details: "Merged and ready 2 go", status: .inPrgrs)]
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet var tableView: UITableView!
//    protocol to update table when new assignment is created
    func userDidEnterNewAsgnmnt(assignment: Assignment) {
        tableView.beginUpdates()
        assignments?.append(assignment)
        tableView.endUpdates()
    }
// protocol to get today's date from Alex's view
    func getUserSelectedDate(date: Date) {
        currentDate = date
        dateLabel.text = formatter.string(from: currentDate)
    }
    var currentDate:Date = Date()
    let formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "MM/dd/yyyy"
        dateLabel.text = formatter.string(from: currentDate)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "YourAsgnmts2AddAsgnmnts" {
            let secondVC:AddAssignmentViewController = segue.destination as! AddAssignmentViewController
            secondVC.delegate = self
        }
//        if segue.identifier == "SelectedDate" {
//            let secondVC:Calendar = segue.destination as! Calendar
//            secondVC.delegate = self
//        }
    }
    
    @IBAction func AddAssignment(_ sender: Any) {
    }
    @IBAction func OpenSettings(_ sender: Any) {
    }
    @IBAction func selectDate(_ sender: Any) {
    }
}

extension ToDoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
}

extension ToDoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
//        currentDate = 
        for asgnmnt in assignments! {
            if asgnmnt.dueDate == currentDate {
                count += 1
            }
        }
        return count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if assignments![indexPath.row].getDueDate() == currentDate {
            cell.textLabel?.text = assignments![indexPath.row].getName()
        } else {}
        
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
