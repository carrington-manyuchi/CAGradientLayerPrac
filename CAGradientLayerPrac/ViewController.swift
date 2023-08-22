//
//  ViewController.swift
//  CAGradientLayerPrac
//
//  Created by DA MAC M1 157 on 2023/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var gradientLayer: CAGradientLayer = {
        let gLayer = CAGradientLayer()
        gLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        gLayer.startPoint = CGPoint(x: 0.1, y: 0.2)
        gLayer.endPoint = CGPoint(x: 0.9, y: 1)
        return gLayer
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupGradientLayer()
        view.backgroundColor  = .systemBackground
        gradientLayer.frame = view.bounds
    }

    func setupGradientLayer() {
        view.layer.addSublayer(gradientLayer)
    }

}

