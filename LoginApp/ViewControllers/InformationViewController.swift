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
    
    var personName = ""
    var personInformation = ""
    var personPhoto = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = personName
        personInfo.text = personInformation
        
        personImage.image = UIImage(named: "selfPhoto")
    }
    override func viewDidLayoutSubviews() {
        personImage.layer.cornerRadius = personImage.frame.width / 2
    }
}
