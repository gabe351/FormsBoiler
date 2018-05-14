//
//  UsersTableView.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

class UsersTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    var users = [UserEntry]()
    
    func initTableView() {
        self.dataSource = self
        self.delegate   = self
        
        self.separatorStyle = .none
        
        let nib = UINib(nibName: UserCell.NIB_NAME, bundle: nil)
        self.register(nib, forCellReuseIdentifier: UserCell.ID)
    }
            
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: UserCell.ID, for: indexPath) as! UserCell
        cell.configureView(user: users[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }        
}
