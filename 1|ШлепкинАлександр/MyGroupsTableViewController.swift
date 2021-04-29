//
//  MyGroupsTableViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {
    

    var group = ["Футбол", "Отдых", "Машины", "Оружие"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return group.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:GroupsTableViewCell.reuseGroupeIdentifier , for: indexPath) as! GroupsTableViewCell
        let groups = group[indexPath.row]
        cell.configureGroupe(title: groups, image: UIImage(systemName: "person.3.fill"))

        return cell
    }
   

}
