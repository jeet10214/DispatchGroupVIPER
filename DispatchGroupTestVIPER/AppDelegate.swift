//
//  AppDelegate.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        setRoot()
        return true
    }
    
    private func setRoot() {
        window = UIWindow()
        let firstVC = viewModuleBuilder().buildModule()
        let navigationController = UINavigationController(rootViewController: firstVC)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

