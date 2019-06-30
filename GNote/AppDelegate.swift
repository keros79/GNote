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

    func application(_ application:NSApplication, open urls: [URL]) {
        print("openURLs:", urls)
    }

}

