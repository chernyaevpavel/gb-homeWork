//
//  SearchCell.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit


class SearchCell: UITableViewCell {
    @IBOutlet weak var imageSearchGroup: UIImageView!
    @IBOutlet weak var labelSearchGroup: UILabel!
 
    static let searchGroupIdentifier = "SearchCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func configureGroupe(title: String?, image: UIImage?) {
        labelSearchGroup.text = title
        imageSearchGroup.image = image
        
    }
    
    
    
    
}
