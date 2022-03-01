//
//  PassViewController.swift
//  RZDPass
//
//  Created by tambanco 🥳 on 01.03.2022.
//

import UIKit

class PassViewController: UIViewController {
    
    var passView: PassView!

    override func viewDidLoad() {
        super.viewDidLoad()
        passViewBuilder()
    }
    
    func passViewBuilder() {
        passView = PassView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        view.addSubview(passView)
    }
}
