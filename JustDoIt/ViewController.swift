//
//  ViewController.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 2/21/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Notification.text = ""
    }

    @IBAction func notificationButton(_ sender: Any) {
        var message = Notifications()
        message.selectMessage()
        message.appendAssignmentToMessage()
        Notification.text = message.pushNotification()
        
        
    }
    
    @IBOutlet var Notification: UILabel!
    
}

