//
//  ImageFriendCollectionViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 04.05.2021.
//

import UIKit


class ImageFriendCollectionViewController: UICollectionViewController {
    
    let masha = UserFriend(name: "Masha", image: UIImage(named: "Masha")!, imageCollection: UIImage(named: "Masha.2")!)
    let dasha = UserFriend(name: "Dasha", image: UIImage(named: "Dasha")!, imageCollection: UIImage(named: "Dasha.2")!)
    let sasha = UserFriend(name: "Sasha", image: UIImage(named: "Sasha")!, imageCollection: UIImage(named: "Sasha.2")!)
    let nikita = UserFriend(name: "Nikita", image: UIImage(named: "Nikita.img")!, imageCollection: UIImage(named: "Nikita.2")!)


    var friend : [UserFriend] = []
    


    override func viewDidLoad() {
        super.viewDidLoad()
        friend.append(nikita)
        friend.append(masha)
        friend.append(dasha)
        friend.append(sasha)


    }

  
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friend.count
    }
// Не понимаю почему в колекцию идут все фотки а не определенного друга 
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FriendIconCollectionViewCell.reuseID, for: indexPath) as! FriendIconCollectionViewCell
        let imageFriend = friend[indexPath.row]
        cell.configureImage(image: imageFriend.imageCollection)
        return cell
    }

    // MARK: UICollectionViewDelegate

}
