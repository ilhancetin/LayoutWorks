//
//  AppDelegate.swift
//  Image&CHCR
//
//  Created by I L H A N on 19.03.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()

//        let navigatorController = UINavigationController(rootViewController: Challenge())
        let navigatorController = UINavigationController(rootViewController: DesignImage())
        window?.rootViewController = navigatorController

        return true
    }

}

