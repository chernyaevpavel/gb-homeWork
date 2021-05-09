//
//  ProfileFriendViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 09.05.2021.
//

import UIKit

class ProfileFriendViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var citylabel: UILabel!
    var users: FriendProfile!

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImage.image = UIImage(named: "fon")
        avatarImage.image = users.avatar
        nameLabel.text = users.name
        secondNameLabel.text = users.secondName
        citylabel.text = users.city
        
        
    }
    

    

}
