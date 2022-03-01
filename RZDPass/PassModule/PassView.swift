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
        backgroundColor = .darkGray
        
        layer.addSublayer(passShapeLayer)
        passShapeLayer.frame = bounds
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10, y: 160))
        path.addArc(withCenter: CGPoint(x: 20, y: 160), radius: 10, startAngle: Double.pi, endAngle: (Double.pi*3)/2, clockwise: true)
        path.addLine(to: CGPoint(x: 370, y: 150))
        path.addArc(withCenter: CGPoint(x: 370, y: 160), radius: 10, startAngle: Double.pi/2, endAngle: 0, clockwise: true)
        path.addLine(to: CGPoint(x: 380, y: 250))
        path.addArc(withCenter: CGPoint(x: 380, y: 260), radius: 5, startAngle: (Double.pi*3)/2, endAngle: Double.pi/2, clockwise: false)
        path.addLine(to: CGPoint(x: 380, y: 600))
        path.addArc(withCenter: CGPoint(x: 370, y: 600), radius: 10, startAngle: 0, endAngle: Double.pi/2, clockwise: true)
        path.addLine(to: CGPoint(x: 20, y: 610))
        path.addArc(withCenter: CGPoint(x: 20, y: 600), radius: 10, startAngle: Double.pi/2, endAngle: Double.pi, clockwise: true)
        path.addLine(to: CGPoint(x: 10, y: 270))
        path.addArc(withCenter: CGPoint(x: 10, y: 260), radius: 5, startAngle: Double.pi/2, endAngle: (Double.pi*3)/2, clockwise: false)
            
        passShapeLayer.path = path.cgPath
        passShapeLayer.fillColor = UIColor(rgb: 0x75140D).cgColor
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
