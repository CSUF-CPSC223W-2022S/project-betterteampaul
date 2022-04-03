//  TestFile.swift
//  JustDoIt
//
//  Created by csuftitan on 3/24/22.
//
import Foundation

enum Status {
    case notStrtd
    case inPrgrs
    case finished
}

class Assignment{
    init (_ _name: String,dueBy _dueDate: String,details _details: String?,status _status: Status?) {
        name = _name
        details = _details
        dueDate = _dueDate
        status = _status
    }
    func getName() -> String {
        return name
    }
    
    func getDueDate() -> String {
        return dueDate
    }
    func getDetails() -> String? {
        return details
    }
    func getStatus() -> Status? {
        return status
    }
    
    func setName(as _name: String) {
        name = _name
    }
    func setDueDate(as _dueDate: String) {
        dueDate = _dueDate
    }
    func setDetails(as _details: String) {
        details = _details
    }
    func getAssignment() -> Assignment {
        return Assignment(name, dueBy: dueDate, details: details, status: status)
    }
//    Assignments should always have a name, and
    var name: String
    var dueDate: String
    var details: String?
    var status: Status?
}
