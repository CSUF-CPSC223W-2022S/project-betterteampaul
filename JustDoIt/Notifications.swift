//
//  Notifications.swift
//  JustDoIt
//
//  Created by csuftitan on 2/21/22.
//

//push to notification branch
import Foundation


struct Notification {
    // Create a variable to hold the message for the notification
    var pushMessage = ""
    //create an array that will contian various messages that will be selected for the push message
    var listOfUpComingMessages = ["You've got somethings to get done!", "Reminder, you have things to do!",
                                  "STOP PROCRASTINATING!", "Are those extra 5 minutes of sleep really worth your grade? You'll still be sleepy anyways...", "Lets start hopping on some on your responsibilties!", "The duolingo owl's wrath will be a dying candle compared to my rage if you don't get this assignment in on time", "Heads up buddy, we got things to do!"]
    
    //function will select a random messagein the array an assign it to the pushMesssage
    mutating func selectMessage() {
        pushMessage = listOfUpComingMessages[Int.random(in: 0...listOfUpComingMessages.count)]
    }
    
    
    
}
