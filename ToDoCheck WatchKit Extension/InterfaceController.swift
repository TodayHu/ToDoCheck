//
//  InterfaceController.swift
//  ToDoCheck WatchKit Extension
//
//  Created by David Grenewetzki on 2/24/15.
//  Copyright (c) 2015 DPG. All rights reserved.
//

import WatchKit
import Foundation
import DataSilo
import CoreData


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var context = CoreDataStack.sharedInstance.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "ToDoItem")
        let items = context.executeFetchRequest(request, error: nil) as [ToDoItem]
        
        self.table.setNumberOfRows(items.count, withRowType: "ToDoRow")
        
        var theCount = 0
        
        for item in items {
            
            let row = self.table.rowControllerAtIndex(theCount) as ToDoTableRowController
            row.nameLabel.setText(item.name)
            theCount++
            
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
