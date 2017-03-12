//
//  Item+CoreDataClass.swift
//  DreamListener
//
//  Created by Abhishek Sisodia on 2017-03-11.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {

    public override func awakeFromInsert () {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
}

