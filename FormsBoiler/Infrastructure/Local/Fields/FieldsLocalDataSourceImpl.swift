//
//  FieldsLocalDataSourceImpl.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation
import RealmSwift

public class FieldsLocalDataSourceImpl: FieldsLocalDataSource {
    
    private static var INSTANCE: FieldsLocalDataSourceImpl?
    
    private let realm: Realm
    
    private init(realm: Realm) {
        self.realm = realm
    }
    
    public static func getInstance(realm: Realm) -> FieldsLocalDataSourceImpl {
        if (INSTANCE == nil) {
            INSTANCE = FieldsLocalDataSourceImpl(realm: realm)
        }
        
        return INSTANCE!
    }
    
    public static func destroyInstance() {
        INSTANCE = nil
    }
    
    func save(field: FieldsEntry) {
        do {
            try realm.write {
                realm.add(field, update: true)
            }
        } catch {
            print("error ---> \(error)")
        }
    }
    
    func destroyBy(guid: String) {
        do {
            try realm.write {
                let objectToDelete = realm.object(ofType: FieldsEntry.self, forPrimaryKey: guid)
                if let field = objectToDelete {
                    realm.delete(field)
                }
            }
        } catch {}
    }
    
    func allBy(formGuid: String) -> [FieldsEntry] {
        let predicate = NSPredicate(format: "formGuid = %@", formGuid)
        
        let foundObjects = realm.objects(FieldsEntry.self).filter(predicate)
        
        return Array(foundObjects)
    }
    
    func findBy(guid: String) -> FieldsEntry {
        let foundObject = realm.object(ofType: FieldsEntry.self, forPrimaryKey: guid)
        
        if let field = foundObject {
            return field
        }
        
        return FieldsEntry()
    }    
}
