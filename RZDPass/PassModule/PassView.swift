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
    
    // MARK: - 2 layer
    let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star")
        return imageView
    }()
    
    // Аэроэкспресс
    let logoLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // Дата поездки
    let dateTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // дата
    let dateLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // Билет действителен на всех маршрутах
    let validLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let trainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "tram.fill")
        return imageView
    }()
    
    // тариф
    let rateTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // стандарт
    let rateLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // стоимость
    let costTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // значение стоимости
    let costLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // пассажир
    let passengerTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // ФИО
    let passengerLable: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // документ
    let docTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // паспорт
    let docLable: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // документ
    let passportTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // серия номер паспорта
    let numbersLable: UILabel = {
        let label = UILabel()
        return label
    }()
    
    //QR код
    let qrCode: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "tram.fill")
        return imageView
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
