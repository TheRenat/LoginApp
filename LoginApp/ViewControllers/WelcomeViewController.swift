//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var person: User! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackgroundColor()
        welcomeLabel.text = "Welcome, \(person.person.name)!"
        
    }
}
