//
//  MyFriendTableTableViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class MyFriendTableTableViewController: UITableViewController {
    
    var friend = ["Nikita", "Sasha", "Masha", "Dasha"]

    override func viewDidLoad() {
        super.viewDidLoad()


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
        let friends = friend[indexPath.row]
        cell.configure(title: friends, image: UIImage(systemName: "person.fill"))
        return cell
    }

}
