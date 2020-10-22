//
//  AppDelegate.swift
//  MG9K
//
//  Created by Jackie Chan on 10/13/20.
//  updated 10/20/20
//  updated 10/21/20

import UIKit
import AWSMobileClient

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    // initialize portait orientation lock
    var orientationLock = UIInterfaceOrientationMask.all
    
    // forces orientation to stay portrait
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }

    // AWS Authentication launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return AWSMobileClient.default().interceptApplication(application, didFinishLaunchingWithOptions: launchOptions)

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
    
    // Enables AWS Authentication to appear in Application
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        
        return AWSMobileClient.default().interceptApplication(application, open: url, sourceApplication: sourceApplication, annotation: annotation)
    }
    


}

