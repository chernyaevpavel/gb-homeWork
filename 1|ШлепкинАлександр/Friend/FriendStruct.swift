//
//  FriendStruct.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 05.05.2021.
//

import UIKit


//struct FriendProfileTest {
//    let name : String
//    let secondName : String
//    let photo : UIImage
//  //  let photoCollection: [PhotoCollection]
//
//  static  let friends = [
//    FriendProfileTest(name: "Biba", secondName: "Petrov", photo: UIImage(named: "img.1")!),
//    FriendProfileTest(name: "Boba", secondName: "Ivanov", photo: UIImage(named: "img.2")!),
//    FriendProfileTest(name: "Pupa", secondName: "Lypkin", photo: UIImage(named: "img.3")!),
//    FriendProfileTest(name: "Lupa", secondName: "", photo: UIImage(named: "img.9")!)
//    ]
//
//
//
//    }
//
//struct PhotoCollection {
//
//    let name: String
//    let collectionPhoto: [UIImage]
//
//    static let photoCollection = [
//        PhotoCollection(name: "Biba", collectionPhoto: [UIImage(named: "img.5")!, UIImage(named: "img.6")!]),
//        PhotoCollection(name: "Boba", collectionPhoto: [UIImage(named: "img.7")!, UIImage(named: "img.8")!]),
//        PhotoCollection(name: "Pupa", collectionPhoto: [UIImage(named: "img.9")!, UIImage(named: "img.10")!]),
//        PhotoCollection(name: "Lupa", collectionPhoto: [UIImage(named: "img.11")!, UIImage(named: "img.1")!])
//    ]
//
//}








class FriendProfile: NSObject {
    
    let name: String
    let secondName: String
    let age: Int
    let city: String
    let avatar: UIImage
    let collectionPhoto: [UIImage]
    
    init(name: String, secondName: String, age: Int, city: String, avatar: UIImage, collectionPhoto: [UIImage]) {
        self.name = name
        self.age = age
        self.secondName = secondName
        self.city = city
        self.avatar = avatar
        self.collectionPhoto = collectionPhoto
    }
    
    
}

class Friend {
    
    var friends = [FriendProfile]()
    init(){
        setup()
    }
    
    func setup() {
        let biba = FriendProfile(name: "Biba", secondName: "Petrovich", age: 30, city: "Москва", avatar: UIImage(named: "img.1")!, collectionPhoto: [UIImage(named: "img.5")!, UIImage(named: "img.6")!])
            
        let boba = FriendProfile(name: "Boba", secondName: "Ivanovich", age: 30, city: "Москва", avatar: UIImage(named: "img.2")!, collectionPhoto: [UIImage(named: "img.7")!, UIImage(named: "img.8")!])
        
        let pupa = FriendProfile(name: "Pupa", secondName: "Vladimirovich", age: 40, city: "Москва", avatar: UIImage(named: "img.3")!, collectionPhoto: [UIImage(named: "img.9")!, UIImage(named: "img.10")!])
        

        let lupa = FriendProfile(name: "Lupa", secondName: "Dmitrovich", age: 40, city: "Москва", avatar: UIImage(named: "img.4")!, collectionPhoto: [UIImage(named: "img.11")!, UIImage(named: "img.1")!])

        friends.append(biba)
        friends.append(boba)
        friends.append(pupa)
        friends.append(lupa)

    }
}

