//
//  PushButtonView.swift
//  FloApp
//
//  Created by Kristopher Kane on 7/14/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class PushButtonView: UIButton {

    var pushButton : UIButton?
    
    init() {
        super.init(frame: CGRectZero)
        self.backgroundColor = UIColor.whiteColor()
        self.setupView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        var path = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }
    
    func setupView() {
        self.pushButton = UIButton()
        self.pushButton?.frame.size = CGSizeMake(100,100)
        self.pushButton?.backgroundColor = UIColor.blueColor()
        self.pushButton?.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.addSubview(pushButton!)
        
        let centerXConstraint = NSLayoutConstraint(
            item: self.pushButton!,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0,
            constant: 0
        )
        
        let centerYConstraint = NSLayoutConstraint(
            item: self.pushButton!,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1.0,
            constant: 0
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: self.pushButton!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 100
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: self.pushButton!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 100
        )
        
        self.addConstraints([centerXConstraint, centerYConstraint, widthConstraint, heightConstraint])
    }

}
