//
//  NotificationSetting.swift
//  JustDoIt
//
//  Created by csuftitan on 3/22/22.
//

import UIKit

class NotificationSetting: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //check to see if the notifications are off
        if message.notificationsIsOn == false {
        // set the appropriate label message
        NotificationStateLabel.text = "Nofications Off"
        // set the switch to be off
        switchState.isOn = false
        } else {
            //Set the switch to be on
            switchState.isOn = true
            //set the label to the appropriate message
            NotificationStateLabel.text = "Notifications On"
        }
  
   
        
    }
    

    @IBAction func swtichToggle(_ sender: Any) {
        // if the switch is turned on, we update the boolean and text to represent an on state
        if switchState.isOn {
            message.notificationsIsOn = true
            NotificationStateLabel.text = "Notifications On"
        } else  {
        //else the switch is turned off we updat ethe boolen and text to represent an off state
            message.notificationsIsOn = false
            NotificationStateLabel.text = "Notifications Off"
        }
        
    }
    @IBOutlet var NotificationStateLabel: UILabel!

   
    @IBOutlet var switchState: UISwitch!
    
}
