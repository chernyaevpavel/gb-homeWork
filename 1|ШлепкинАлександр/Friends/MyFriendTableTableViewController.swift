//
//  MyFriendTableTableViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class MyFriendTableTableViewController: UITableViewController {
    
   // var friend = ["Nikita", "Sasha", "Masha", "Dasha"]
   // var friend = [UserFriend]()
    let masha = UserFriend(name: "Masha", image: UIImage(named: "Masha")!, imageCollection: UIImage(named: "Masha.2")!)
    let dasha = UserFriend(name: "Dasha", image: UIImage(named: "Dasha")!, imageCollection: UIImage(named: "Dasha.2")!)
    let sasha = UserFriend(name: "Sasha", image: UIImage(named: "Sasha")!, imageCollection: UIImage(named: "Sasha.2")!)
    let nikita = UserFriend(name: "Nikita", image: UIImage(named: "Nikita.img")!, imageCollection: UIImage(named: "Nikita.2")!)
    
     var friend : [UserFriend] = []

    override func viewDidLoad() {

        friend.append(nikita)
        friend.append(masha)
        friend.append(dasha)
        friend.append(sasha)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friend.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reuseIdentifier, for: indexPath) as! FriendsTableViewCell
       // let friends  = friend[indexPath.row]
        let friends = friend[indexPath.row]
        cell.configure(title: friends.name, image: friends.image)
        
        //cell.configure(title: friends, image: UIImage(systemName: "person.fill"))
        return cell
    }

}
