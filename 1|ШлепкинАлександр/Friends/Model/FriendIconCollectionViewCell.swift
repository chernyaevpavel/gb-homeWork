//
//  FriendIconCollectionViewCell.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 04.05.2021.
//

import UIKit

class FriendIconCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "FriendIconCollectionViewCell"
    
    @IBOutlet weak var IconFriend: UIImageView!
    
    func configureImage( image: UIImage?) {
        IconFriend.image = image
    }
    
//    let nikita = UserFriend(name: "Nikita", image: UIImage(named: "Nikita.img")!)
//    let masha = UserFriend(name: "Masha", image: UIImage(named: "Masha")!)
//    let dasha = UserFriend(name: "Dasha", image: UIImage(named: "Dasha")!)
//    let sasha = UserFriend(name: "Sasha", image: UIImage(named: "Sasha")!)
//    
    
    

    }
