//
//  DataEntry.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import RealmSwift

class DataEntry: Object {
    
    @objc dynamic var guid     = ""
    @objc dynamic var response = ""
    @objc dynamic var formGuid = ""
    
    override static func primaryKey() -> String? {
        return "guid"
    }
}
