//
//  SwiftUI_FirebaseApp.swift
//  SwiftUI+Firebase
//
//  Created by 김민 on 2023/07/16.
//

import SwiftUI
import FirebaseCore

@main
struct SwiftUI_FirebaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}
