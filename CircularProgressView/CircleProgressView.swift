//
//  CircleProgressView.swift
//  CircularProgressView
//
//  Created by Bruno Henriques on 08/08/15.
//  Copyright (c) 2015 Bruno Henriques. All rights reserved.
//

import UIKit

@IBDesignable public class CircleProgressView: UIView {
    
    @IBInspectable public var circleColor: UIColor = UIColor(hex: 0xE3C79B)
    @IBInspectable public var progressColor: UIColor = UIColor(hex: 0xE46D71)
    @IBInspectable public var clockWise: Bool = true
    @IBInspectable public var lineWidth: CGFloat = 4.0 {
        didSet {
            backgroundCircle.lineWidth = lineWidth
            self.progressCircle.lineWidth = lineWidth + 0.1
        }
    }
    @IBInspectable public var valueProgress: Float = 0 {
        didSet {
            self.progressCircle.strokeEnd = CGFloat(valueProgress) / 100
        }
    }
    
    private let backgroundCircle = CAShapeLayer()
    private let progressCircle = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clearColor()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func drawRect(rect: CGRect) {
        // Create path
        let centerPointArc = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        let radiusArc: CGFloat = self.frame.width / 2 * 0.8
        var circlePath = UIBezierPath(arcCenter: centerPointArc, radius: radiusArc, startAngle: radial_angle(0), endAngle: radial_angle(360), clockwise: clockWise)
        
        // Define background circle still to be loaded
        backgroundCircle.path = circlePath.CGPath
        backgroundCircle.strokeColor = circleColor.CGColor
        backgroundCircle.fillColor = UIColor.clearColor().CGColor
        backgroundCircle.lineWidth = lineWidth
        backgroundCircle.strokeStart = 0
        backgroundCircle.strokeEnd = CGFloat(1.0)
        
        // Define circle showing loading
        progressCircle.path = circlePath.CGPath
        progressCircle.strokeColor = progressColor.CGColor
        progressCircle.fillColor = UIColor.clearColor().CGColor
        progressCircle.lineWidth = lineWidth + 0.1
        progressCircle.strokeStart = 0
        progressCircle.strokeEnd = CGFloat(valueProgress) / 100
        
        // set layers
        layer.addSublayer(backgroundCircle)
        layer.addSublayer(progressCircle)
    }
    
    private func radial_angle(arc: CGFloat) -> CGFloat {
        return CGFloat(M_PI) * arc / 180
    }
}