//
//  GradientView.swift
//  Smack
//
//  Created by Logan Skurdal on 3/24/18.
//  Copyright © 2018 Logan Skurdal. All rights reserved.
//

import UIKit

@IBDesignable       // let's class know it will be able to render inside story board

class GradientView: UIView {

    // variables that will dynamically change in storyboard
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1)
    {
        didSet
        {
            self.setNeedsLayout()   // invalidates current layout and updates current layout. If in storyboard, it will update the layour right away
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1)
        {
        didSet
        {
            self.setNeedsLayout()   // invalidates current layout and updates current layout. If in storyboard, it will update the layour right away
        }
    }
    
    
    //create layer to add to UISubview class. Thus, creating gradient
    override func layoutSubviews()
    {
        let gradientLayer = CAGradientLayer()       // 'CA' stands for Core animation. A layer that draws a color gradient over its background color
        
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]      // set up colors included in gradient
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)              // starting point for gradient (top left)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)                // ending point for gradient (bottom right)
        gradientLayer.frame = self.bounds                   // set size of gradient to the size of the views bounds
        self.layer.insertSublayer(gradientLayer, at: 0)     // insert graident layer into View Controllers layers at index 0, so it is the first layer
    }

}
