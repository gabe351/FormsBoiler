//
//  FormLocalDataSourceImpl.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation
import RealmSwift

public class FormLocalDataSourceImpl: FormLocalDataSource {
    
    private static var INSTANCE: FormLocalDataSourceImpl?
    
    private let realm: Realm
    
    private init(realm: Realm) {
        self.realm = realm
    }
    
    public static func getInstance(realm: Realm) -> FormLocalDataSourceImpl {
        if (INSTANCE == nil) {
            INSTANCE = FormLocalDataSourceImpl(realm: realm)
        }
        
        return INSTANCE!
    }
    
    public static func destroyInstance() {
        INSTANCE = nil
    }
    
    func save(form: FormsEntry) {
        do {
            try realm.write {
                realm.add(form, update: true)
            }
        } catch {
            print("error ---> \(error)")
        }
    }
    
    func findBy(guid: String) -> FormsEntry {
        let foundForm = realm.object(ofType: FormsEntry.self, forPrimaryKey: guid)
        
        if let form = foundForm {
            return form
        }
        
        return FormsEntry()
    }
    
}
