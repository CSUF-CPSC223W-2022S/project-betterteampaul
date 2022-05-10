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
    var delegate:NotifDelegate? = nil

    
    
    var unsortedAsgnmntList: [Assignment]=[]
    var asgnmntList: [Assignment] = []
    
    //  Protocol to update table when new assignment is created
    func userDidEnterNewAsgnmnt(assignment: Assignment) {
        unsortedAsgnmntList.append(assignment)
        reloadList()

    }
    //  Protocol to get user selected date
    func userDidEnterNewDate(date: Date) {
        self.dateLabel.text = formatter?.string(from: date)
        currentDate = date
        reloadList()
    }
    func reloadList() {
        asgnmntList.removeAll()
        for asgnmnt in unsortedAsgnmntList {
            let order = Calendar.current.compare(asgnmnt.getDueDate()!, to: currentDate!, toGranularity: .day)
            
                switch order {
                case .orderedAscending:
                    break
                case .orderedDescending:
                    break
                case .orderedSame:
                    asgnmntList.append(asgnmnt)
                    break
                default:
                    print("contact developer")
                    break
                }
        }
        tableView.reloadData()
    }
    
    func initList() {
        unsortedAsgnmntList.append(Assignment("Swift Project Presentation", dueBy: Date(), details: "Create Structures", status: .finished))
        unsortedAsgnmntList.append(Assignment("9.2 Parametric Equations Quiz", dueBy: Date(), details: nil, status: .finished))
        unsortedAsgnmntList.append(Assignment("Club Meeting", dueBy: Date(), details: "Working UI", status: .finished))


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
        if unsortedAsgnmntList.count == 0 {
            initList()
        }
        reloadList()
        
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
    }
}

extension ToDoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return asgnmntList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = asgnmntList[indexPath.row].getName()
        return cell
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            if let index = unsortedAsgnmntList.firstIndex(where: { $0 == asgnmntList[indexPath.row]}) {
                unsortedAsgnmntList.remove(at: index)
            }
            asgnmntList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
    
}

protocol NotifDelegate {
    func getAssignmentList(list:[Assignment]) -> [Assignment]
}
