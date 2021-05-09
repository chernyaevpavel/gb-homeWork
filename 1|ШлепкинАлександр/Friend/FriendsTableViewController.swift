//
//  FriendsTableViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 05.05.2021.
//

import UIKit

class FriendsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let friend = Friend()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


       
    }

    // MARK: - Table view data source
//
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friend.friends.count
        
     }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriedsCellTableViewCell.reuseId , for: indexPath) as! FriedsCellTableViewCell
        let bib = friend.friends[indexPath.row]
        
        cell.friendNameLable.text = bib.name
        cell.imageFriend.image = bib.avatar
        
       return cell
        
        
    }
    
    
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToProfile" {
            let vc = segue.destination as! ProfileFriendViewController
            let indexPath = segue as! IndexPath
            let user = friend.friends[indexPath.row]
            vc.users = user


    }

    
    }
}
    
    
    
    
    
    
    
    
    
    
    // Интересная функция Alert
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let user = friend.friends[indexPath.row]
//
//        let alert = UIAlertController(title: user.name, message: user.secondName, preferredStyle: .actionSheet)
//        let profileAction = UIAlertAction(title: "Профиль", style: .default) { (alert) in
//            self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
//        }
//        let deleteFriend = UIAlertAction(title: "Удалить", style: .destructive) { (alert) in
//            self.friend.friends.remove(at: indexPath.row)
//            tableView.reloadData()
//
//        }
//        alert.addAction(profileAction)
//        alert.addAction(deleteFriend)
//        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//        alert.present(alert, animated: true, completion: nil)
//    }
// override    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToProfile" {
//            let vc = segue.destination as! ProfileFriendViewController
//            let indexPath = sender as! IndexPath
//
//            let user = friend.friends[indexPath.row]
//            vc.users = user
//        }
//    }

