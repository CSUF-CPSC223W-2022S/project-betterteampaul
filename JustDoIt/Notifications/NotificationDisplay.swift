//
//  NotificationDisplay.swift
//  JustDoIt
//
//  Created by csuftitan on 4/2/22.
//

import UIKit


var message = Notifications()
class NotificationDisplay: UIViewController, NotifDelegate {
    func getAssignmentList(list:[Assignment]) -> [Assignment] {
        return list
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Notifications" {
            let toDoVC = segue.destination as! ToDoViewController
            toDoVC.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Notification.text = ""
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
        } else {
        // noitifactions are off so we don't display anything
            Notification.text = ""
        }
        
        
    }
    
    @IBOutlet var Notification: UILabel!
    
}
