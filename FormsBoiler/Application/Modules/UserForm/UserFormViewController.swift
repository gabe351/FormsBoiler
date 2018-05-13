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
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func saveDidPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func cancelDidPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }        
}

