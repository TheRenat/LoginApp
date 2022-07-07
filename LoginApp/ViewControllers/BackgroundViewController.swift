//
//  BackgroundViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 07.07.2022.
//

import UIKit

extension UIView {
    func addBackgroundColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [UIColor.systemMint.cgColor, UIColor.white.cgColor]
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
