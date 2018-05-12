//
//  StoryboardLoadable.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 12/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

protocol StoryboardLoadable {
    static func storyboardName() -> String
    static func storyboardIdentifier() -> String
}
