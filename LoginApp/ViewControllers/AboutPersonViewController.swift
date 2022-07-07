//
//  AboutPersonViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 06.07.2022.
//

import UIKit

class AboutPersonViewController: UIViewController {
    
    var person: User!
    
    @IBOutlet var storyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackgroundColor()
        
        storyLabel.textColor = .black
        storyLabel.text = person.person.storyOfLife
    }
}
