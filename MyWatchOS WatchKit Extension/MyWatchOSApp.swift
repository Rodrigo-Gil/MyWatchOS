//
//  MyWatchOSApp.swift
//  MyWatchOS WatchKit Extension
//
//  Created by Rodrigo Gil on 2022-02-23.
//

import SwiftUI

@main
struct MyWatchOSApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
