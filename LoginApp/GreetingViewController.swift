//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 03.07.2022.
//

import UIKit

@IBDesignable
class GreetingViewController: UIViewController {
    
    
//    @IBInspectable var topColor: UIColor = .red
//    @IBInspectable var buttomColor: UIColor = .blue
   
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")"
    }
    
//    override func viewDidLayoutSubviews() {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [topColor.cgColor, buttomColor.cgColor]
//        backgroundView.layer.addSublayer(gradientLayer)
//    }
    
    
    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
        
    }
}
