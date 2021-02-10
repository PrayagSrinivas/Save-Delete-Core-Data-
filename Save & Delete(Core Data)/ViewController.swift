//
//  ViewController.swift
//  Save & Delete(Core Data)
//
//  Created by Jovial Software on 04/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StudentName: UITextField!
    @IBOutlet weak var StatusField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveData(_ sender: UIButton) {
        let dh = DatabaseSaving()
        dh.save(studenName: StudentName.text!)
        StatusField.text = "Data has been saved"
    }
    
    @IBAction func clearData(_ sender: Any) {
        let dh = DatabaseSaving()
        dh.clear()
        StatusField.text = "Data has been cleared"
    }
}

