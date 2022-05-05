//
//  NotificationDisplay.swift
//  JustDoIt
//
//  Created by csuftitan on 4/2/22.
//

import UIKit
import UserNotifications

var message = Notifications()
class NotificationDisplay: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Notification.text = ""
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        
        let content = UNMutableNotificationContent()
        message.selectMessage()
        message.appendAssignmentToMessage()
        message.pushNotification()
        message.pastNotificationMessages.append(message.pushNotification())
        content.title = "Just Do It"
        content.body = message.pushMessage
        
        let date = Date().addingTimeInterval(5)
        
        let dateComponents = Foundation.Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        center.add(request) { (error) in }
    }
    
    

    @IBAction func notificationButton(_ sender: Any) {
        // it notificaitons are on, we generate new notifications
        if message.notificationsIsOn == true {
        // we first pick a message by calling the select message function
        message.selectMessage()
        // we add the assignment thats due
        message.appendAssignmentToMessage()
        // we then set the text equal to the full message
        Notification.text = message.pushNotification()
        message.pastNotificationMessages.append(message.pushNotification())
        } else {
        // noitifactions are off so we don't display anything
            Notification.text = ""
        }
        
        
    }
    
    @IBOutlet var Notification: UILabel!
    
}
