//
//  UserLocalDataSourceImpl.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 14/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation
import RealmSwift

public class UserLocalDataSourceImpl: UserLocalDataSource {
    
    private static var INSTANCE: UserLocalDataSourceImpl?
    
    private let realm: Realm
    
    private init(realm: Realm) {
        self.realm = realm
    }
    
    public static func getInstance(realm: Realm) -> UserLocalDataSourceImpl {
        if (INSTANCE == nil) {
            INSTANCE = UserLocalDataSourceImpl(realm: realm)
        }
        
        return INSTANCE!
    }
    
    public static func destroyInstance() {
        INSTANCE = nil
    }
    
    func save(user: UserEntry) {
        do {
            try realm.write {
                realm.add(user, update: true)
            }
        } catch {
            print("error ---> \(error)")
        }
    }
    
    func findBy(guid: String) -> UserEntry {
        let foundUser = realm.object(ofType: UserEntry.self, forPrimaryKey: guid)
        
        if let user = foundUser {
            return user
        }
        
        return UserEntry()
    }
    
    func allBy(formGuid: String) -> [UserEntry] {
        let predicate = NSPredicate(format: "formGuid = %@", formGuid)
        
        let foundObjects = realm.objects(UserEntry.self).filter(predicate)
        
        return Array(foundObjects)
    }
}
