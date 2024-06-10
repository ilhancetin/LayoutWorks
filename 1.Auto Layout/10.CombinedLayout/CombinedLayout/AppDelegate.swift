//
//  AppDelegate.swift
//  CombinedLayout
//
//  Created by I L H A N on 10.04.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

 
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .playerBlack
        window?.makeKeyAndVisible()

        let navigatorController = UINavigationController(rootViewController: TitleBarController())
        window?.rootViewController = navigatorController
        
//        window?.rootViewController = HomeController()
        
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .playerBlack
        
        return true
    }


}

