//
//  agoraprotoApp.swift
//  agoraproto
//



import SwiftUI
import Firebase


@main

struct googlefirebaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @AppStorage("isUserAuthenticated") var isUserAuthenticated = false // Use @AppStorage

    var body: some Scene {
        WindowGroup {
                NavigationView {
                    RootView()
            }
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
