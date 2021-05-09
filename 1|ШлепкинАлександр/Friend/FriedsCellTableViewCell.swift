//
//  FriedsCellTableViewCell.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 05.05.2021.
//

import UIKit

class FriedsCellTableViewCell: UITableViewCell {
    static let reuseId = "FriedsCellTableViewCell"

    @IBOutlet weak var friendNameLable: UILabel!
    @IBOutlet weak var imageFriend: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
