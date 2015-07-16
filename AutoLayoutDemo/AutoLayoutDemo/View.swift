//
//  View.swift
//  AutoLayoutDemo
//
//  Created by Kristopher Kane on 7/14/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class View: UIView {
    
    var blueView : UIView?
    var redView : UIView?
    
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
    
    func setupView() {
        self.blueView = UIView()
        self.blueView?.backgroundColor = UIColor.blueColor()
        self.blueView?.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.addSubview(self.blueView!)
        
        let centerXConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self, // superview
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0,
            constant: 0
        )
        
        let centerYConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self, // superview
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1.0,
            constant: 0
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil, // nothing, it just is wide
            attribute: NSLayoutAttribute.NotAnAttribute, //there is no item
            multiplier: 1.0,
            constant: 200
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: self.blueView!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil, // nothing, it just is wide
            attribute: NSLayoutAttribute.NotAnAttribute, //there is no item
            multiplier: 1.0,
            constant: 200
        )
        
        self.redView = UIView()
        self.redView?.backgroundColor = UIColor.redColor()
        self.redView?.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.addSubview(redView!)
        
        let redViewWidthConstraint = NSLayoutConstraint(
            item: self.redView!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil, // nothing, it just is wide
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 100
        )
        
        let redViewHeightConstraint = NSLayoutConstraint(
            item: self.redView!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil, // nothing, it just is wide
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 100
        )
        
        let redViewCenterXConstraint = NSLayoutConstraint(
            item: self.redView!,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.blueView!,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0,
            constant: 0
        )
        
        let redViewCenterYConstraint = NSLayoutConstraint(
            item: self.redView!,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.blueView!,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0
        )
        
        self.addConstraints([centerXConstraint, centerYConstraint, widthConstraint, heightConstraint, redViewCenterXConstraint, redViewCenterYConstraint, redViewHeightConstraint, redViewWidthConstraint])
    }
    
}
