//
//  CGColorExtension.swift
//  Animations
//
//  Created by Rafael González on 12/08/23.
//

import Foundation
import UIKit

extension CGColor {
    var UIColor : UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}
