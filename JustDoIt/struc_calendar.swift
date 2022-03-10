//
//  struc_calendar.swift
//  JustDoIt
//
//  Created by Alexander Zavaleta on 2/21/22.
//

import Foundation

struct calendar{
    var day: Int
    var week: Int
    var month: Int
    var year: Int
    var assignment: String
}

struct Month {
    var month: Int
    init(){
        month = 1
    }
    init(_ userinput: Int){
        month = userinput
        if userinput < 1 || userinput > 12 {
            month = 1
        }
    }
    
    var name: String {
        var namemonth: String
        switch month {
        case 1:
            namemonth = "January"
        case 2:
            namemonth = "February"
        case 3:
            namemonth = "March"
        case 4:
            namemonth = "April"
        case 5:
            namemonth = "May"
        case 6:
            namemonth = "June"
        case 7:
            namemonth = "July"
        case 8:
            namemonth = "August"
        case 9:
            namemonth = "September"
        case 10:
            namemonth = "October"
        case 11:
            namemonth = "November"
        case 12:
            namemonth = "December"
        default:
            namemonth = "none"
        }
        return namemonth
    }
}

struct Days{
    var days: Int
    init(){
        days = 1
    }
    init(_ userinput: Int){
        days = userinput
        if userinput < 1 || userinput > 12 {
            days = 1;
        }
    }
}
