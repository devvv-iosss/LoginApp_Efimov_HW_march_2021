//
//  WelcomeViewController.swift
//  LoginApp_Efimov_HW_march_2021
//
//  Created by Future Developer  on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let user = User(name: "User", password: "")

        welcomeUserOutlet.text = "Welcome, \(user.name)!"

    }
    
//    @IBAction func doneButtonPressed() {
//        dismiss(animated: true)
//

        
        
    }
    
 


