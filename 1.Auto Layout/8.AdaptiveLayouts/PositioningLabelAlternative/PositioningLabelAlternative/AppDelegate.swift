//
//  AppDelegate.swift
//  PositioningLabelAlternative
//
//  Created by I L H A N on 07.04.2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        let navigatorController = UINavigationController(rootViewController: PositioningLabelAlternative())
        window?.rootViewController = navigatorController
        
        return true
    }

}

