//
//  UIActivityIndicatorViewExtension.swift
//  FormsBoiler
//
//  Created by Gabriel Rosa on 12/05/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

extension UIActivityIndicatorView {
    func scale(factor: CGFloat) {
        guard factor > 0.0 else { return }
        
        transform = CGAffineTransform(scaleX: factor, y: factor)
    }
}
