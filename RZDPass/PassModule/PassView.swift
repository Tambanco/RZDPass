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
        layer.backgroundColor = UIColor(rgb: 0x75140D).cgColor
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(passShapeLayer)
        passShapeLayer.frame = bounds
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20, y: 200))
        path.addLine(to: CGPoint(x: 400, y: 200))
        path.addArc(withCenter: CGPoint(x: 400, y: 220),
                    radius: Double.pi,
                    startAngle: Double.pi/2,
                    endAngle: 0,
                    clockwise: true)
        path.addLine(to: CGPoint(x: 400, y: 400))
        path.addArc(withCenter: CGPoint(x: 400, y: 10),
                    radius: Double.pi/2,
                    startAngle: Double.pi/2,
                    endAngle: Double.pi*2,
                    clockwise: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
