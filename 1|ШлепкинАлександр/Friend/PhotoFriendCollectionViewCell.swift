//
//  PhotoFriendCollectionViewCell.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 08.05.2021.
//

import UIKit

class PhotoFriendCollectionViewCell: UICollectionViewCell {
    
   static  let reuseIden = "PhotoFriendCollectionViewCell"
    
    
    
    @IBOutlet weak var photoCollection: UIImageView!
    
    let photoFriends = FriendProfile.friends
    
    func photoCollection(photo: UIImage) {
        photoCollection.image = photo
    
        
    }
    
}
