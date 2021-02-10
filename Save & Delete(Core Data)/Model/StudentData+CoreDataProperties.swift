//
//  StudentData+CoreDataProperties.swift
//  Save & Delete(Core Data)
//
//  Created by Jovial Software on 05/01/21.
//
//

import Foundation
import CoreData


extension StudentData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StudentData> {
        return NSFetchRequest<StudentData>(entityName: "StudentData")
    }

    @NSManaged public var studentname: String?

}

extension StudentData : Identifiable {

}
