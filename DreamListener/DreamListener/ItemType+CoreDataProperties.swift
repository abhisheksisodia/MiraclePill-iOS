//
//  ItemType+CoreDataProperties.swift
//  DreamListener
//
//  Created by Abhishek Sisodia on 2017-03-11.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
