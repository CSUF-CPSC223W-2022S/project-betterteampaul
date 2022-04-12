//
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
    init (_ _name: String,dueBy _dueDate: Date?,details _details: String?,status _status: Status?) {
        name = _name
        details = _details
        dueDate = _dueDate
        status = _status
    }
    init () {
        name = "Name goes here"
        details = "Details are here"
        dueDate = Date()
        status = .notStrtd
    }
    func getName() -> String {
        return name
    }
    
    func getDueDate() -> Date? {
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
    func setDueDate(as _dueDate: Date) {
        dueDate = _dueDate
    }
    func setDetails(as _details: String) {
        details = _details
    }
  
//    Assignments should always have a name, and
    var name: String
    var dueDate: Date?
    var details: String?
    var status: Status?
}
