//
//  MyAplication.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 14/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation

class MyAplication {
    
    public static let userFormGuid  = "UserForm-AGAAEAG-AGASGAS"
    public static let fieldNameGuid = UUID().uuidString
    public static let fieldAgeGuid  = UUID().uuidString
    
    class func registerUserForm() {
        let formsLocalDataSource = InjectionLocalDataSource.provideFormsLocalDataSource()
        
        let formEntry = FormsEntry()
        
        formEntry.guid  = userFormGuid
        formEntry.title = "UsersForm"
        
        formsLocalDataSource.save(form: formEntry)
        
        registerUserFields()
    }
    
    class func registerUserFields() {
        
        let fieldsLocalDataSource = InjectionLocalDataSource.provideFieldsLocalDataSource()
        
        let fieldName = FieldsEntry()
        let fieldAge  = FieldsEntry()
        
        fieldName.guid     = fieldNameGuid
        fieldName.formGuid = userFormGuid
        fieldName.name     = "Name"
        fieldName.type     = "String"
        
        fieldAge.guid     = fieldAgeGuid
        fieldAge.formGuid = userFormGuid
        fieldAge.name     = "Age"
        fieldAge.type     = "Int"
        
        fieldsLocalDataSource.save(field: fieldName)
        fieldsLocalDataSource.save(field: fieldAge)
    }
    
    
    class func registerDataFromForm(dataFromForm: [String: Any]) {
        let dataLocalDataSource = InjectionLocalDataSource.provideDataLocalDataSource()
        let userLocalDataSource = InjectionLocalDataSource.provideUserLocalDataSource()
        
        let dataEntry = DataEntry()
        dataEntry.guid     = UUID().uuidString
        dataEntry.formGuid = userFormGuid
        dataEntry.response = dataFromForm.description
        
        dataLocalDataSource.save(data: dataEntry)
        
        let userEntry      = UserEntry()
        userEntry.guid     = UUID().uuidString
        userEntry.name     = dataFromForm["Name"] as! String
        userEntry.age      = dataFromForm["Age"] as! String
        userEntry.formGuid = userFormGuid
        
        userLocalDataSource.save(user: userEntry)
    }
    
    class func allUsersBy(formGuid: String) -> [UserEntry] {
        let userLocalDataSource = InjectionLocalDataSource.provideUserLocalDataSource()
        
        return userLocalDataSource.allBy(formGuid: formGuid)
    }
}
