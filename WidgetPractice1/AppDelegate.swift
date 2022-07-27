//
//  AppDelegate.swift
//  WidgetPractice1
//
//  Created by nakamori on 2021/12/07.
//

import UIKit
import StoreKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, PurchaseManagerDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        PurchaseManager.shared.delegate = self
        SKPaymentQueue.default().add(PurchaseManager.shared)
        // Override point for customization after application launch.
        return true
    }
    func applicationWillTerminate(_ application: UIApplication) {
        SKPaymentQueue.default().remove(PurchaseManager.shared)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

