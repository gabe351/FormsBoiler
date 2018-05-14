//
//  FieldsLocalDataSource.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation

protocol FieldsLocalDataSource {
    
    func save(field: FieldsEntry)
    
    func destroyBy(guid: String)
    
    func allBy(formGuid: String) -> [FieldsEntry]
    
    func findBy(guid: String) -> FieldsEntry
}
