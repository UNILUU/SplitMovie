//
//  AppDelegate.swift
//  SearchMovie
//
//  Created by Xiaolu on 3/1/19.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
       
        
        let splitVC : UISplitViewController = UISplitViewController(nibName: nil, bundle: nil)

        let detailNC  = UINavigationController(rootViewController: NoSelectViewController())
        let masterNC = UINavigationController(rootViewController: TableViewController())
        
        splitVC.viewControllers = [masterNC, detailNC]
        masterNC.navigationBar.barTintColor = UIColor(red: 232/255, green: 245/255, blue: 253/255, alpha: 1)
        splitVC.delegate = self
        
        window?.rootViewController = splitVC
        window?.makeKeyAndVisible()
        return true
    }

    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        if let detailViewController = secondaryViewController as? UINavigationController{
            return true
        }
        return false
        
    }
}

