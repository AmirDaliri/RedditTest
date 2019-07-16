//
//  AppDelegate.swift
//  RedditTest
//
//  Created by Amir Daliri on 16.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import PieCrust

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = showFeedController()
        return true
    }

}

extension AppDelegate {
    
    func showLaunchScreenController() -> PCWindow {
        return PCWindow(rootViewController: LaunchScreenViewController())
    }
    
    func showFeedController() -> PCWindow {
        return PCWindow(rootViewController: PCNavigationController(rootViewController: ViewController()))
    }
    
}
