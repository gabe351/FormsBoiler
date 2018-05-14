//
//  UserEntry.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 14/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import RealmSwift

class UserEntry: Object {
    
    @objc dynamic var guid     = ""
    @objc dynamic var name     = ""
    @objc dynamic var age      = ""
    @objc dynamic var formGuid = ""
    
    override static func primaryKey() -> String? {
        return "guid"
    }
}
