//
//  OldNotifications.swift
//  JustDoIt
//
//  Created by csuftitan on 4/6/22.
//

import UIKit

class OldNotifications: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // will create a string that consists of all the notifications the user has recieved and display
        //them on screen
        pastNotifications.text = message.formatOldNotifications()
        
    }
  

    
    @IBOutlet var pastNotifications: UILabel!
    
    

    
    
}
