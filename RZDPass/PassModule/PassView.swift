//
//  PassView.swift
//  RZDPass
//
//  Created by tambanco 🥳 on 01.03.2022.
//

import UIKit

class PassView: UIView {

    // MARK: - 1 layer
    let passShapeLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(passShapeLayer)
        passShapeLayer.frame = bounds
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 30, y: 210))
        path.addArc(withCenter: CGPoint(x: 40, y: 210), radius: 10, startAngle: Double.pi, endAngle: (Double.pi*3)/2, clockwise: true)
        path.addLine(to: CGPoint(x: 300, y: 200))
        path.addArc(withCenter: CGPoint(x: 300, y: 210), radius: 10, startAngle: Double.pi/2, endAngle: 0, clockwise: true)
        path.addLine(to: CGPoint(x: 310, y: 350))
        path.addArc(withCenter: CGPoint(x: 310, y: 360), radius: 10, startAngle: (Double.pi*3)/2, endAngle: Double.pi/2, clockwise: false)
        path.addLine(to: CGPoint(x: 310, y: 600))
        path.addArc(withCenter: CGPoint(x: 300, y: 590), radius: 10, startAngle: 0, endAngle: Double.pi/2, clockwise: true)
        path.addLine(to: CGPoint(x: 40, y: 600))
        path.addArc(withCenter: CGPoint(x: 40, y: 590), radius: 10, startAngle: Double.pi/2, endAngle: Double.pi, clockwise: true)
        path.addLine(to: CGPoint(x: 30, y: 360))
        path.addArc(withCenter: CGPoint(x: 30, y: 360), radius: 10, startAngle: Double.pi/2, endAngle: (Double.pi*3)/2, clockwise: false)
            
        passShapeLayer.path = path.cgPath
        passShapeLayer.fillColor = UIColor(rgb: 0x75140D).cgColor
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
