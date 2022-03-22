//
//  Notifications.swift
//  JustDoIt
//
//  Created by csuftitan on 2/21/22.
//

//push to notification branch
import Foundation
import PushKit


struct Notifications {
    // Create a variable to hold the message for the notification
    var pushMessage = ""
    var notificationsIsOn = false
    //create an array that will contian various messages that will be selected for the push message
    var listOfUpComingMessages = ["You've got somethings to get done!", "Reminder, you have things to do!",
                                  "STOP PROCRASTINATING!", "Are those extra 5 minutes of sleep really worth your grade? You'll still be sleepy anyways...", "Lets start hopping on some on your responsibilties!", "The duolingo owl's wrath will be a dying candle compared to my rage if you don't get this assignment in on time", "Heads up buddy, we got things to do!"]
    
    //temporary place holder that contains a small temporary list of hardcoded assignments
    var dataBaseOfAssignments = ["Lab Exercise 5", "Project Check-in two", "CSPC Discussion Post", "Lab Exercise 4"]
    
    //function will select a random messagein the array an assign it to the pushMesssage
    mutating func selectMessage() {
        var index = Int.random(in: 0...listOfUpComingMessages.count - 1)
        pushMessage = listOfUpComingMessages[index]
        // index position 5 is the position of the duolingo message, supposed to be a rare message
        if index == 5 {
            //generate random integer between 1 and 10
            let reroll = Int.random(in: 1...10)
            // Theres a 1 in 10 chance that the message will stay the duolingo bird message
            if reroll != 7 {
                //reroll was not equal to 7 so we generate another random number and we change the message from the rare message to another
                //random message in the array
                index = Int.random(in: 0...listOfUpComingMessages.count - 1)
                pushMessage = listOfUpComingMessages[index]
            }
        }
    }
    //Add the assignment that is due to the message that will be used to notify the user
    mutating func appendAssignmentToMessage() -> Int{
        let index = Int.random(in: 0...dataBaseOfAssignments.count - 1)
        pushMessage += (" \(dataBaseOfAssignments[index]) is due" )
        return index
    }
    
    // pushNotification function temporary placeholder, prints message to simulate pushing a notification
    func pushNotification() -> String {
        print("\(pushMessage)")
        return pushMessage
    }
    
    
    
}
