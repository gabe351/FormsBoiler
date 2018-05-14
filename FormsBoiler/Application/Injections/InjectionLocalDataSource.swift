//
//  InjectionLocalDataSource.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 14/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation
import RealmSwift

class InjectionLocalDataSource {
    static let realm = try! Realm()

    static func provideFormsLocalDataSource() -> FormLocalDataSource {
        return FormLocalDataSourceImpl.getInstance(realm: realm)
    }
    
    static func provideFieldsLocalDataSource() -> FieldsLocalDataSource {
        return FieldsLocalDataSourceImpl.getInstance(realm: realm)
    }
    
    static func provideDataLocalDataSource() -> DataLocalDataSource {
        return DataLocalDataSourceImpl.getInstance(realm: realm)
    }
    
    static func provideUserLocalDataSource() -> UserLocalDataSource {
        return UserLocalDataSourceImpl.getInstance(realm: realm)
    }    
}
