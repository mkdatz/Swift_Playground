//
//  WatchCountdownApp.swift
//  WatchCountdown WatchKit Extension
//
//  Created by Michael Datz on 2/15/21.
//

import SwiftUI

@main
struct WatchCountdownApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
