//
//  Assignments.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 3/8/22.
//

import Foundation

enum Status {
    case notStrtd
    case inPrgrs
    case finished
    
}

class Assignment {
//    init() {
//        assignmentName = ""
//        assignmentDetails = ""
//        dueDate = ""
//
//    }
    init (_assignmentName: String, _dueDate: String, _assignmentDetails: String?, _assigmentStatus: Status? ) {
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


