//
//  Assignments.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 3/8/22.
//

import Foundation

struct Assignment {
//    init() {
//        assignmentName = ""
//        assignmentDetails = ""
//        dueDate = ""
//
//    }
    init (_assignmentName: String, _assignmentDetails: String?, _dueDate: String, _assigmentLink: String? ) {
        assignmentName = _assignmentName
        assignmentDetails = _assignmentDetails
        assignmentLink = _assigmentLink
        dueDate = _dueDate
    }
    
    func getAssignmentName() -> String {
        return assignmentName
    }
    
    func getDueDate() -> String? {
        return dueDate
    }
    func getAssignmentDetails() -> String? {
        return assignmentDetails
    }
    func getAssignmentLink () -> String? {
        return assignmentLink
    }
//    Assignments should always have a name, and
    var assignmentName: String
    var assignmentDetails: String?
    var dueDate: String
    var assignmentLink: String?
}


