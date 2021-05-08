//
//  FriendStruct.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 05.05.2021.
//

import UIKit


struct FriendProfile {
    let name : String
    let secondName : String
    let photo : UIImage
    let photoCollection: [UIImage]
    
  static  let friends = [
   FriendProfile(name: "Biba", secondName: "Petrov", photo: UIImage(named: "img.1")!, photoCollection: [UIImage(named: "img.2")!, UIImage(named: "img.3")!]),
    FriendProfile(name: "Boba", secondName: "Ivanov", photo: UIImage(named: "img.2")!, photoCollection: [UIImage(named: "img.5")!, UIImage(named: "img.6")!]),
    FriendProfile(name: "Pupa", secondName: "Lypkin", photo: UIImage(named: "img.3")!, photoCollection: [UIImage(named: "img.7")!, UIImage(named: "img.8")!]),
     FriendProfile(name: "Lupa", secondName: "", photo: UIImage(named: "img.9")!, photoCollection: [UIImage(named: "img.10")!, UIImage(named: "img.11")!])
    ]
    
  
//    static func Friends() -> [FriendProfile] {
//        let biba = FriendProfile(name: "Biba", secondName: "Petrov", photo: UIImage(named: "img.1")!, photoAvatar: [UIImage(named: "img.2")!, UIImage(named: "img.3")!])
//        let boba = FriendProfile(name: "Boba", secondName: "Ivanov", photo: UIImage(named: "img.1")!, photoAvatar: [UIImage(named: "img.2")!, UIImage(named: "img.3")!])
//        let pupa = FriendProfile(name: "Pupa", secondName: "Lypkin", photo: UIImage(named: "img.1")!, photoAvatar: [UIImage(named: "img.2")!, UIImage(named: "img.3")!])
//        let lupa = FriendProfile(name: "Lupa", secondName: "", photo: UIImage(named: "img.1")!, photoAvatar: [UIImage(named: "img.2")!, UIImage(named: "img.3")!])
//        return Friends()
//    }
    
    }


