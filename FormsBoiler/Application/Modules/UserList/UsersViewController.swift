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
    
    @IBOutlet weak var tableView: UsersTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "Saved Users"        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.initTableView()
        tableView.users = [
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52),
                           UserDto(name: "Miguel da silva", age: 52)
                            ]
    }
    
    @objc func addTapped() {
        let viewController = UIStoryboard.loadViewController() as UserFormViewController
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

