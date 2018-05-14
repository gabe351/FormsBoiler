//
//  DataLocalDataSourceImpl.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation
import RealmSwift

public class DataLocalDataSourceImpl: DataLocalDataSource {
    
    private static var INSTANCE: DataLocalDataSourceImpl?
    
    private let realm: Realm
    
    private init(realm: Realm) {
        self.realm = realm
    }
    
    public static func getInstance(realm: Realm) -> DataLocalDataSourceImpl {
        if (INSTANCE == nil) {
            INSTANCE = DataLocalDataSourceImpl(realm: realm)
        }
        
        return INSTANCE!
    }
    
    public static func destroyInstance() {
        INSTANCE = nil
    }
    
    func allBy(formGuid: String) -> [DataEntry] {
        let predicate = NSPredicate(format: "formGuid = %@", formGuid)
        
        let foundObjects = realm.objects(DataEntry.self).filter(predicate)
        
        return Array(foundObjects)
    }
}
