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
    //var person: Person!
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage.layer.name = personImage
        
        
    }
}
