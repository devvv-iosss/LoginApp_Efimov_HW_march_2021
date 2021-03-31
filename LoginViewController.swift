//
//  LoginViewController.swift
//  LoginApp_Efimov_HW_march_2021
//
//  Created by Future Developer  on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    
    @IBAction func forgotUserNamePressed() {
        showAlert(with: "Forgot User Name?", and: "It's: User")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Forgot Password?", and: "It's: Password")
    }
    
    @IBAction func logInButtonPressed() {
        
        let user = User(name: "User", password: "Password")
        
            guard
                userNameTF.text == user.name,
                passwordTF.text == user.password
            else {
                showAlert(with: "Invalid LogIn or Password", and: "Please Enter the correct one")
                passwordTF.text = nil
                
                return
            }
            performSegue(withIdentifier: "firstSegue", sender: nil)
        }
    
    @IBAction  func unwindSegue (segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    
    }



// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:  .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


// MARK: extension for Done/Next button
extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}

