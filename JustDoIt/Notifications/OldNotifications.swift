//
//  OldNotifications.swift
//  JustDoIt
//
//  Created by csuftitan on 4/6/22.
//

import UIKit

class OldNotifications: UIViewController{
    @IBOutlet var notificationTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // will create a string that consists of all the notifications the user has recieved and display
        //them on screen
        notificationTable.delegate = self
        notificationTable.dataSource = self
        
      
        
    }


}



extension OldNotifications: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me!")
    }
}

extension OldNotifications: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return message.pastNotificationMessages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if message.pastNotificationMessages.isEmpty {
            cell.textLabel?.text = "No past Notification"
        } else {
            cell.textLabel?.text = message.pastNotificationMessages[indexPath.row]
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
}





