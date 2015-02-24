//
//  ToDoItem.swift
//  ToDoCheck
//
//  Created by David Grenewetzki on 2/24/15.
//  Copyright (c) 2015 DPG. All rights reserved.
//

import Foundation
import CoreData

class ToDoItem: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var completed: NSNumber

}
