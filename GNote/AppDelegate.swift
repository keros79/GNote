//
//  AppDelegate.swift
//  GNote
//
//  Created by keros on 29/06/2019.
//  Copyright © 2019 keros. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func handleAppleEvent(event: NSAppleEventDescriptor, replyEvent: NSAppleEventDescriptor) {
        guard let appleEventDescription = event.paramDescriptor(forKeyword: AEKeyword(keyDirectObject)) else {
            return
        }
        
        guard let appleEventURLString = appleEventDescription.stringValue else {
            return
        }
        
        let appleEventURL = URL(string: appleEventURLString)
        
        print("Received Apple Event URL: \(appleEventURL)")
    }
    
    func registerMyApp() {
    NSAppleEventManager.shared().setEventHandler(self,
                                                 andSelector: #selector(AppDelegate.handleEvent(_:withReplyEvent:)),
                                                 forEventClass: AEEventClass(kInternetEventClass),
                                                 andEventID: AEEventID(kAEGetURL));
    /*
        [[NSAppleEventManager sharedAppleEventManager] setEventHandler:self andSelector:@selector(getUrl:withReplyEvent:) forEventClass:kInternetEventClass andEventID:kAEGetURL];
 */
    
    }
    
    @objc func getUrl(_ withReplyEvent: NSAppleEventDescriptor!, withReplyEvent: NSAppleEventDescriptor!) {
        
    }
}

