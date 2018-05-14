//
//  Form.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 12/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation

protocol FormLocalDataSource {
    
    func save(form: FormsEntry)
    
    func findBy(guid: String) -> FormsEntry
    
}
