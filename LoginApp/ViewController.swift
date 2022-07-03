//
//  ViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func loginButtonPushed() {
        if userNameTF.text == "User" && passwordTF.text == "Password" { print(1)
        } else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButtonPushed() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
        
    }
    @IBAction func forgotPasswordButtonPushed() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTF.text
    }
    
}
extension ViewController {
    private func showAlert(with title: String, and text: String) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


