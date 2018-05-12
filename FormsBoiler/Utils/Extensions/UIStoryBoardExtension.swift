//
//  UIStoryBoardExtension.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 12/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

extension UIStoryboard {
    static func loadViewController<T>() -> T where T: StoryboardLoadable, T: UIViewController {
        return UIStoryboard(name: T.storyboardName(), bundle: nil).instantiateViewController(withIdentifier: T.storyboardIdentifier()) as! T
    }
}
