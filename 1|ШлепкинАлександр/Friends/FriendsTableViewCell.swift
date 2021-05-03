//
//  FriendsTableViewCell.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    static let reuseIdentifier = "FriendsTableViewCell"

    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var titleCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(title: String?, image: UIImage?) {
        titleCell.text = title
        imageViewCell.image = image
    }
    
    
    
}
