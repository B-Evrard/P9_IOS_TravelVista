//
//  AppDelegate.swift
//  TravelVista
//
//  Created by Amandine Cousin on 13/12/2023.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let listView = TravelListView(viewModel: TravelListViewModel())
        let hostingController = UIHostingController(rootView: listView)
        
        window?.rootViewController = hostingController
        window?.makeKeyAndVisible()
        return true
    }
}

