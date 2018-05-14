//
//  UserLocalDataSource.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 14/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation

protocol UserLocalDataSource {
    
    func save(user: UserEntry)
    
    func findBy(guid: String) -> UserEntry
    
    func allBy(formGuid: String) -> [UserEntry]    
}
