//
//  ViewController.swift
//  ToDoCheck
//
//  Created by David Grenewetzki on 2/24/15.
//  Copyright (c) 2015 DPG. All rights reserved.
//

import UIKit
import DataSilo
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var toDoTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }

    @IBAction func saveTapped(sender: AnyObject) {
        
        var context = CoreDataStack.sharedInstance.managedObjectContext!
        
        var item = NSEntityDescription.insertNewObjectForEntityForName("ToDoItem", inManagedObjectContext: context) as ToDoItem
        item.name = self.toDoTextField.text
        context.save(nil)
        
    }


}

