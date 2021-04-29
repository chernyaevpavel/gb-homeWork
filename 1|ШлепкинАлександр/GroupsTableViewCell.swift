//
//  GroupsTableViewCell.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    @IBOutlet weak var groupTitle: UILabel!
    @IBOutlet weak var imageGroup: UIImageView!
    static let reuseGroupeIdentifier = "GroupsTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
   
    
    func configureGroupe(title: String?, image: UIImage?) {
        groupTitle.text = title
        imageGroup.image = image
        
    }


}
