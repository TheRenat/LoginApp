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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.alpha = 0.0
        passwordTF.alpha = 0.0
        
        UIView.animate(withDuration: 0.9, delay: 0.4) {
            self.userNameTF.alpha = 1
            self.passwordTF.alpha = 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.person = user
            } else if let informationVC = viewController as? InformationViewController {
                informationVC.person = user
            } else if let aboutPersonVC = viewController as? AboutPersonViewController {
                aboutPersonVC.person = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonPushed() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password",
                textField: passwordTF
            )
        return
        }
    performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNameButtonPushed() {
        showAlert(with: "Oops!", and: "Your name is Renat 😉", textField: nil)
        
    }
    @IBAction func forgotPasswordButtonPushed() {
        showAlert(with: "Oops!", and: "Your password is Password 😉", textField: nil)
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
}

    private func showAlert(with title: String, and text: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: text,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
            )
        {_ in textField?.text = ""
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


