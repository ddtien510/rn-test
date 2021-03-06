//
//  RNPushdyDelegate.swift
//  RNPushdy
//
//  Created by Luat on 19/12/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import PushdySDK
import React
import React.RCTEventEmitter

/**
 This class was intend to send event from RNPushdy to JS thread on PushdySDK events triggered
 All configuration was done in RNPushdy
 */
@objc class RNPushdyDelegate: NSObject, PushdyDelegate {
    public func sendEventToJs(eventName:String, body:[AnyHashable : Any] = [:]) {
        RNPushdy.sendEventToJs(eventName: eventName, body: body)
    }
    
   public func onNotificationOpened(_ notification: [String : Any], fromState: String) {
       print("{RNPushdy.onNotificationOpened} from state: \(fromState)")

       let universalNotification = RNPushdy.toRNPushdyStructure(notification)
       sendEventToJs(eventName: "onNotificationOpened", body:["notification": universalNotification, "fromState": fromState])
   }
   
   public func onNotificationReceived(_ notification: [String : Any], fromState: String) {
       print("{RNPushdy.onNotificationReceived} from state: \(fromState)")
       
       let universalNotification = RNPushdy.toRNPushdyStructure(notification)
       sendEventToJs(eventName: "onNotificationReceived", body:["notification": universalNotification, "fromState": fromState])
   }
   
   public func onRemoteNotificationRegistered(_ deviceToken: String) {
       print("{RNPushdy.onRemoteNotificationRegistered} deviceToken: \(deviceToken)")
       
       sendEventToJs(eventName: "onRemoteNotificationRegistered", body:["deviceToken": deviceToken])
   }
   
   public func onRemoteNotificationFailedToRegister(_ error: NSError) {
       print("{RNPushdy.onRemoteNotificationFailedToRegister} error: \(error)")
       
       sendEventToJs(eventName: "onRemoteNotificationFailedToRegister", body:["error": error])
   }
}
