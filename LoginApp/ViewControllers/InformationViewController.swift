//
//  InformationViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 05.07.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var personInfo: UILabel!
    @IBOutlet var name: UILabel!
    
    var person: User!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackgroundColor()
        
        name.text = person.person.name
        personInfo.textColor = .black
        personInfo.text = person.person.infoAboutPerson
        personImage.image = UIImage(named: "selfPhoto")
    }
    override func viewDidLayoutSubviews() {
        personImage.layer.cornerRadius = personImage.frame.width / 2
    }
}
