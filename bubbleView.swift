//
//  bubbleView.swift
//  gamecenter-style-bubble
//
//  Created by Zhehao Zhou on 5/7/15.
//  Copyright (c) 2015 Zhehao Zhou. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class bubbleView: UIView {
    
    var thumbnail = UIImageView()
    
    override func drawRect(rect: CGRect) {
        
        var pathAnimation = CAKeyframeAnimation(keyPath: "position")
        pathAnimation.calculationMode = kCAAnimationPaced
        pathAnimation.fillMode = kCAFillModeForwards
        pathAnimation.repeatCount = Float.infinity
        pathAnimation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)]
        pathAnimation.duration = 5.0
        var curvedPath: CGMutablePathRef = CGPathCreateMutable()
        var circleContainer = CGRectInset(self.frame, 45,45)
        CGPathAddEllipseInRect(curvedPath, nil, circleContainer)
        pathAnimation.path = curvedPath
        self.layer.addAnimation(pathAnimation, forKey: "positionAnimation")
        
        var scale_x = CAKeyframeAnimation(keyPath: "transform.scale.x")
        scale_x.duration = 1
        scale_x.values = [1.0,1.05,1.0]
        scale_x.keyTimes = [0.0,0.5,1.0]
        scale_x.repeatCount = Float.infinity
        scale_x.autoreverses = true
        scale_x.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)]
        self.layer.addAnimation(scale_x, forKey:"scaleXAnimation")
        
        var scale_y = CAKeyframeAnimation(keyPath: "transform.scale.y")
        scale_y.duration = 1.5
        scale_y.values = [1.0,1.05,1.0]
        scale_y.keyTimes = [0.0,0.5,1.0]
        scale_y.repeatCount = Float.infinity
        scale_y.autoreverses = true
        scale_y.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)]
        self.layer.addAnimation(scale_y, forKey: "scaleYAnimation")
        
        thumbnail.frame = rect
        self.addSubview(thumbnail)
        
    }
}

extension bubbleView {
    func slideInFromLeft(duration: NSTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        let slideInFromLeftTransition = CATransition()
        if let delegate: AnyObject = completionDelegate {
            slideInFromLeftTransition.delegate = delegate
        }
        slideInFromLeftTransition.type = kCATransitionPush
        slideInFromLeftTransition.subtype = kCATransitionFromLeft
        slideInFromLeftTransition.duration = duration
        slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        slideInFromLeftTransition.fillMode = kCAFillModeRemoved
        self.layer.addAnimation(slideInFromLeftTransition, forKey: "slideInFromLeftTransition")
    }
}
