//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 03.07.2022.
//

import UIKit

class GreetingViewController: UIViewController {

   // private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemPurple.cgColor]
        view.layer.addSublayer(gradientLayer)
        
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
