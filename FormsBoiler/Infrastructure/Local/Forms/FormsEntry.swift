//
//  FormEntry.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import RealmSwift

class FormsEntry: Object {
    
    @objc dynamic var guid  = ""
    @objc dynamic var title = ""
    
    override static func primaryKey() -> String? {
        return "guid"
    }
}
