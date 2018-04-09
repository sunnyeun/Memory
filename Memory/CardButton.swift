//
//  CardView.swift
//  Memory
//
//  Created by Seung Hyun Eun on 4/3/18.
//  Copyright © 2018 Sunny Eun. All rights reserved.
//

import UIKit
import CoreGraphics

// Rounded Corner from IBInspectable / IBDesignable - NSHipster

@IBDesignable
class CardButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    
    @IBInspectable var borderThickness: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    
    @IBInspectable var borderColor: UIColor {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return UIColor.black
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    
}

    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

