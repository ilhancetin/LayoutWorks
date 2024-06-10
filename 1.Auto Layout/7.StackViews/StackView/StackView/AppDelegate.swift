//
//  AppDelegate.swift
//  StackView
//
//  Created by I L H A N on 1.04.2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .black
        window?.makeKeyAndVisible()
        
        let navigatorController = UINavigationController(rootViewController: StackView())
        
        window?.rootViewController = navigatorController
        
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .offBlack
        
        return true
    }
    
}

