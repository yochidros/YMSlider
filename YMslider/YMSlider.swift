//
//  YMSlider.swift
//  YMslider
//
//  Created by 宮澤賢生 on 2017/03/07.
//  Copyright © 2017年 yochio. All rights reserved.
//

import UIKit

@IBDesignable public class YMSlider : UISlider {
    
    @IBInspectable public var rotateFlag : Bool = false {
        didSet {
            rotate()
        }
    }
    
    @IBInspectable public var barHeight : CGFloat = 1.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    fileprivate func rotate () {
        self.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
    }
    
    override public func trackRect(forBounds bounds: CGRect) -> CGRect {
        var newBounds = super.trackRect(forBounds: bounds)
        newBounds.size.height = barHeight
        return newBounds
    }
    
}
