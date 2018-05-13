//
//  HomeViewController.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    override class var NAME : String { return "Home" }
    override class var ID : String { return "HomeID" }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true        
    }
        
    @IBAction func goToUsers(_ sender: Any) {
        let viewController = UIStoryboard.loadViewController() as UsersViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
