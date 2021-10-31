//
//  ViewController.swift
//  H.W 2.4
//
//  Created by Ирина on 29.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
  

    let enter = Entrance.init(loginUser: "123", password: "123", nameUser: "Irina", surname: "Bexter")
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVc = segue.destination as? WelcomeViewController else { return }
        welcomeVc.user = enter.nameUser
        let tabBarController = segue.destination as! UITabBarController
    }
    
    @IBAction func logIn() {
        if userName.text != enter.loginUser || password.text != enter.password {
            showAlert(title: "Unvalid login or password", message: "Please, enter correct login or password", textField: password)
        }
    }
    
    @IBAction func forgotUsName() {
        showAlert(title: "Oops!", message: "Your name is \(enter.loginUser) 😉")
    }
    
    @IBAction func forgotPass() {
        showAlert(title: "Oops!", message: "Your name is \(enter.password) 😉")
    }
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userName.text = ""
        password .text = ""
    }
}

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in print("Ok")
            
        }))
        present(alert, animated: true)
    }
}

extension  ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userName {
            password.becomeFirstResponder()
        } else {
            logIn()
            performSegue(withIdentifier: "oneSegue", sender: nil)
        }
        
        return true
    }
}
