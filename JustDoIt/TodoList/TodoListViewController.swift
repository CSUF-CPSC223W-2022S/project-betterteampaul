//
//  TodoListViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/2/22.
//

import Foundation
import UIKit

class ToDoViewController: UIViewController, DataEnteredDelegate, CalendarDelegate{
    var currentDate:Date?
    var formatter:DateFormatter?
    @IBOutlet var tableView: UITableView!
    @IBOutlet var dateLabel: UILabel!
    
    
    var asgnmntList: [Assignment] = [Assignment("Project Checkin 1", dueBy: nil, details: "Create Structures", status: .finished), Assignment("Project Checkin 2", dueBy: nil, details: nil, status: .finished), Assignment("Project Checkin 3", dueBy: nil, details: "Working UI", status: .finished), Assignment("Project Checkin 4", dueBy: nil, details: "Merged and ready 2 go", status: .inPrgrs)]
    
    //  Protocol to update table when new assignment is created
    func userDidEnterNewAsgnmnt(assignment: Assignment) {
        let newIndexPath = IndexPath(row: asgnmntList.count, section: 0)
        tableView.beginUpdates()
        asgnmntList.append(assignment)
        tableView.insertRows(at: [newIndexPath], with: .fade)
        tableView.reloadData()
        tableView.endUpdates()
    }
    //  Protocol to get user selected date
    func userDidEnterNewDate(date: Date) {
        print("YSER DID ENTER DATE")
        print(date)
        self.dateLabel.text = formatter?.string(from: date)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        currentDate  = Date()
        formatter = DateFormatter()
        formatter?.dateFormat = "MM/dd"
        dateLabel.text = formatter?.string(from: currentDate!)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "YourAsgnmts2AddAsgnmnts" {
            let secondVC:AddAssignmentViewController = segue.destination as! AddAssignmentViewController
            secondVC.delegate = self
        }
        if segue.identifier == "DateSelection" {
            let calendarVC:CalendarVC = segue.destination as! CalendarVC
            calendarVC.delegate = self
        }
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
        return asgnmntList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        if asgnmntList[indexPath.row].getDueDate() == currentDate {
            cell.textLabel?.text = asgnmntList[indexPath.row].getName()
//        } else {}
        
        return cell
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            asgnmntList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
    
}
