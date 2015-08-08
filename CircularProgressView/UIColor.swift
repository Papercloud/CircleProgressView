//
//  UIColor.swift
//  CircularProgressView
//
//  Created by Bruno Henriques on 08/08/15.
//  Copyright (c) 2015 Bruno Henriques. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    public convenience init(hex: UInt){
        self.init(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}