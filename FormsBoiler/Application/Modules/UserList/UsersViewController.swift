//
//  UsersViewController.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

class UsersViewController: BaseViewController {
    
    override class var NAME : String { return "Users" }
    override class var ID : String { return "UsersID" }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func addTapped() {
        let viewController = UIStoryboard.loadViewController() as UserFormViewController
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

