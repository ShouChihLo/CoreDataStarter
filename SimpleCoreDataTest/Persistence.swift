//
//  Persistence.swift
//  SImpleCoreDataText
//
//  Created by 羅壽之 on 2023/4/25.
//

import CoreData
import SwiftUI

struct PersistenceController {
    
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        container.viewContext
    }
    
    init() {
        container = NSPersistentContainer(name: "Maganed Object Model")
       
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error {
            print(error)
            }
        })
        
        // get the file path in the simulator for debugging
        if let url = container.persistentStoreCoordinator.persistentStores.first?.url {
            print(url)
        }
    }
    
    static func saveData(viewContext: NSManagedObjectContext) {
        // if nothing changes on viewContext then return
        
        
        // sava data
        
    }
    
    static func addData(viewContext: NSManagedObjectContext, name: String, phone: String) {
        // create an empty contact on viewContext
        
        // add values to the new contact
        
        // save data changes to the core data
        
    }
    
    static func deleteData(viewContext: NSManagedObjectContext, target: NSManagedObject) {
        // delete one data record from the core data
        
        // save data changes to the core data
        
    }
    
}

