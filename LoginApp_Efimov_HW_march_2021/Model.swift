//
//  Model.swift
//  LoginApp_Efimov_HW_march_2021
//
//  Created by Future Developer  on 31.03.2021.
//

import Foundation



struct User {
    let name: String
    let password: String
    
    static func getUserData() -> User {
        User(name: "Name", password: "Password")
    }
}

