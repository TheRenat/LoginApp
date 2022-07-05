//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarVC = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarVC.viewControllers else { return }
//        
//        viewControllers.forEach { viewController in
//            if let welcomeVC = viewController as? WelcomeViewController {
//                welcomeVC.userName = user.name
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName)!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemMint.cgColor, UIColor.white.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
