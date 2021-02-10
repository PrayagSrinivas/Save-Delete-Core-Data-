//
//  DatabaseSaving.swift
//  Save & Delete(Core Data)
//
//  Created by Jovial Software on 05/01/21.
//

import Foundation
import CoreData
import UIKit
class DatabaseSaving{
    func save(studenName:String){
        let appDelegate = (UIApplication.shared.delegate) as? AppDelegate
        let context = (appDelegate?.persistentContainer.viewContext)
        let student = NSEntityDescription.insertNewObject(forEntityName: "StudentData", into: context!) as! StudentData
        student.studentname = studenName
        do{
            try context?.save()
            let result = try context?.fetch(StudentData.fetchRequest()) as! [StudentData]
            for item in result{
                print(item.studentname!)
            }
        }catch{
            print("Oops!! Error Enountered!")
        }
    }
    func clear(){
        let appDelegate = (UIApplication.shared.delegate) as? AppDelegate
        let context = (appDelegate?.persistentContainer.viewContext)
        do{
            let items = try context?.fetch(StudentData.fetchRequest()) as! [StudentData]
            for item in items{
                context?.delete(item)
            }
            try context?.save()
            print("Data has been cleared succesfully")
        }catch{
           print("Oops!! Error Enountered!")
        }
    }
}
