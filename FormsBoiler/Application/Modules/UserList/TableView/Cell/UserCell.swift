//
//  UserCell.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    public static let NIB_NAME = "UserCell"
    public static let ID       = "UserCellID"
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    func configureView(user: UserDto) {
        nameLabel.text = user.name
        ageLabel.text  = "\(user.age) years"
    }
}
