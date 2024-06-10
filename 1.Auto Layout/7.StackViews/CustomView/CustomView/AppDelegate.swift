//
//  AppDelegate.swift
//  CustomView
//
//  Created by I L H A N on 1.04.2024.
//

import UIKit

@main  //main değişecek bitince bi bak
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .black
        window?.makeKeyAndVisible()
        
        let navigatorController = UINavigationController(rootViewController: CustomView())
        
        window?.rootViewController = navigatorController
        
        UINavigationBar.appearance().titleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor.white ]
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .offBlack
        
        return true
    }


}

