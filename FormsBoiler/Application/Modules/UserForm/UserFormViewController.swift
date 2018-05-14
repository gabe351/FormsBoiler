//
//  UserFormViewController.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

class UserFormViewController: BaseViewController {
    
    override class var NAME : String { return "UserForm" }
    override class var ID : String { return "UserFormID" }
        
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func saveDidPressed(_ sender: UIButton) {
        
        let name = defaultStringIfNil(nameTextField.text)
        let age  = defaultStringIfNil(ageTextField.text)
        
        let formData: [String: Any] = ["Name": name,
                                       "Age": age]
        
        MyAplication.registerDataFromForm(dataFromForm: formData)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelDidPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

