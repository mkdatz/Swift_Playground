//
//  AppleWatchTestNewApp.swift
//  AppleWatchTestNew WatchKit Extension
//
//  Created by Michael Datz on 2/14/21.
//

import SwiftUI

@main
struct AppleWatchTestNewApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
