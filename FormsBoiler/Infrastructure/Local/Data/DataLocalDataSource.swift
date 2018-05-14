//
//  DataLocalDataSource.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 13/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation

protocol DataLocalDataSource {
    
    func allBy(formGuid: String) -> [DataEntry]
    
}
