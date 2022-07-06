//
//  AboutPersonViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 06.07.2022.
//

import UIKit

class AboutPersonViewController: UIViewController {
    
    var lifeStory = ""
    
    @IBOutlet var storyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = lifeStory
    }
}
