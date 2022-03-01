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
        imageView.tintColor = .white
        return imageView
    }()
    
    // Аэроэкспресс
    let logoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Аэроэкспресс"
        label.textColor = .white
        return label
    }()
    
    // Дата поездки
    let dateTitle: UILabel = {
        let label = UILabel()
        label.text = "Дата поездки"
        return label
    }()
    
    // дата
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "04.06.17"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    // Билет действителен на всех маршрутах
    let validLabel: UILabel = {
        let label = UILabel()
        label.text = "Билет действителен на всех маршрутах"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let trainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "tram.fill")
        imageView.tintColor = .black
        return imageView
    }()
    
    // тариф
    let rateTitle: UILabel = {
        let label = UILabel()
        label.text = "Тариф"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    // стандарт
    let rateLabel: UILabel = {
        let label = UILabel()
        label.text = "CТАНДАРТ"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
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
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .cyan
        
        layer.addSublayer(passShapeLayer)
        
        addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        logoImage.topAnchor.constraint(equalTo: topAnchor, constant: 170).isActive = true
        
        addSubview(logoLabel)
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        logoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60).isActive = true
        logoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 170).isActive = true
        
        addSubview(dateTitle)
        dateTitle.translatesAutoresizingMaskIntoConstraints = false
        dateTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        dateTitle.topAnchor.constraint(equalTo: topAnchor, constant: 160).isActive = true
        
        addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25).isActive = true
        dateLabel.topAnchor.constraint(equalTo: dateTitle.bottomAnchor).isActive = true
        
        addSubview(validLabel)
        validLabel.translatesAutoresizingMaskIntoConstraints = false
        validLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        validLabel.topAnchor.constraint(equalTo: topAnchor, constant: 220).isActive = true
        
        addSubview(trainImage)
        trainImage.translatesAutoresizingMaskIntoConstraints = false
        trainImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        trainImage.topAnchor.constraint(equalTo: validLabel.bottomAnchor).isActive = true
        
        addSubview(rateTitle)
        rateTitle.translatesAutoresizingMaskIntoConstraints = false
        rateTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        rateTitle.topAnchor.constraint(equalTo: trainImage.bottomAnchor, constant: 20).isActive = true
        
        addSubview(rateLabel)
        rateLabel.translatesAutoresizingMaskIntoConstraints = false
        rateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        rateLabel.topAnchor.constraint(equalTo: (rateTitle).bottomAnchor).isActive = true
        
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
        passShapeLayer.frame = bounds
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
