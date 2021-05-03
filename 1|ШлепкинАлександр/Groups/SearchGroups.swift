//
//  SearchGroups.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class SearchGroups: UITableViewController {
    
    var searchGroups = ["Sportcar", "Хоккей"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchGroups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:SearchCell.searchGroupIdentifier , for: indexPath) as! SearchCell
        let searchGroup = searchGroups[indexPath.row]
        cell.configureGroupe(title: searchGroup, image: UIImage(systemName: "person.3.fill") )
        

        
        return cell
        
    }
}
