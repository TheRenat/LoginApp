//
//  ViewController.swift
//  LoginApp
//
//  Created by Renat Ibragimov on 30.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func loginButtonPushed() {
        if userNameTF.text == "User" && passwordTF.text == "Password" { print(1)
        } else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameButtonPushed() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
        
    }
    @IBAction func forgotPasswordButtonPushed() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else { return }
        greetingVC.userName = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard  let greetingVC = segue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}
extension LoginViewController {
    private func showAlert(with title: String, and text: String) {
        let alert = UIAlertController(
            title: title,
            message: text,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: alertHandler
        )
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func alertHandler(alert: UIAlertAction!) {
        passwordTF.text = ""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if touch.view == self.view{
                self.dismiss(animated: true, completion: nil)
            }
            self.view.endEditing(true)
        }
    }
}


