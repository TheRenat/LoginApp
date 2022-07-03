//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 03.07.2022.
//

import UIKit

@IBDesignable
class WelcomeViewController: UIViewController {

    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    @IBInspectable var firstColor: UIColor = .clear
    @IBInspectable var secondColor: UIColor = .clear
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")"
        
//        let newLayer = CAGradientLayer()
//        newLayer.colors = [UIColor.blue.cgColor, UIColor.green.cgColor]
//        newLayer.frame = view.bounds
//        
//        view.layer.insertSublayer(newLayer, at: 0)
    }
    
    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
}
