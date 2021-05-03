//
//  UserProfile.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 03.05.2021.
//

import Foundation


class UserProfile {
    let userName: String
    let userSurname: String
    let userAge: Int
    let userCity: String
    
    init(userAge: Int, userCity: String, userName: String, userSurname: String) {
        self.userAge = userAge
        self.userName = userName
        self.userCity = userCity
        self.userSurname = userSurname
        
    }
}


