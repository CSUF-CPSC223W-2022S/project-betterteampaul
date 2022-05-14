//
//  NotificationsTest.swift
//  JustDoItTests
//
//  Created by csuftitan on 3/8/22.
//

import XCTest

class NotificationsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //ensures that the PushMessages is empty at the moment that the object is created
    func testPushMessageBeginsEmpty() {
        let notifObject = Notifications()
        XCTAssertEqual(notifObject.pushMessage, "")
    }
    
    //ensures that the array that contains the possible messages for the push notifications is not empty at the time of initilization
    func testArrayWithMessagesBeginsWithItems() {
        let notifObject = Notifications()
        XCTAssertGreaterThan(notifObject.listOfUpComingMessages.count, 0)
    }
    //ensures that the select message function in notifications sets the push message to a random string in the array
    func testFuncSelectMessageChangesPushMessage() {
        var notifObject = Notifications()
        notifObject.selectMessage()
        XCTAssertTrue(notifObject.listOfUpComingMessages.contains(notifObject.pushMessage))
        
    }
    
    //function ensures that the message printed out and returned by the pushNotification function was a string found in the array
    // that contains all possible messages
    func testPushNotificationFunc() {
        var notifObject = Notifications()
        notifObject.selectMessage()
        let notificationMessage =  notifObject.pushNotification()
        XCTAssertTrue(notifObject.listOfUpComingMessages.contains(notificationMessage))
    }
    
    //ensures that appendAssignment adds an assignment from the data base of assignments to the pushmessage
    func testMessageContainsDueAssignment() {
        var notifObject = Notifications()
        notifObject.selectMessage()
        let index = notifObject.appendAssignmentToMessage()
        let message = notifObject.pushNotification()
        XCTAssertTrue(message.contains(notifObject.dataBaseOfAssignments[index]))
    }
    
    //assert that notifications are turned on at the creation of the object
    func testNotificationsBeginOn() {
        let notifObject = Notifications()
        XCTAssertTrue(notifObject.notificationsIsOn)
    }
  

}
