//
//  AppDelegate.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 29.09.20.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    
    var window: UIWindow?
    let dataController = DataController(modelName: "VirtualTourist")

    // MARK: - Lifecycle
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        dataController.load()
        
        let navigationController = window?.rootViewController as! UINavigationController
        let mapViewController = navigationController.topViewController as! MapViewController
         mapViewController.dataController = dataController
        
        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        saveContext()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        saveContext()
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "VirtualTourist")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    private func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}

