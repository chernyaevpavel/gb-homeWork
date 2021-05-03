//
//  MyGroupsTableViewController.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {
    


    @IBAction func addGroup(segue: UIStoryboardSegue) {
            
        if segue.identifier == "addGroup" {
            guard  let soureceController = segue.source as? SearchGroups else { return }
                  if let indexPath = soureceController.tableView.indexPathForSelectedRow {
                    var groupTwo = soureceController.searchGroups[indexPath.row]
                    if !group.contains(groupTwo) {
                       group.append(groupTwo)
                        tableView.reloadData()
                    }
        }
        }
    }

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
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            // Если была нажата кнопка «Удалить»
            if editingStyle == .delete {
            // Удаляем город из массива
                group.remove(at: indexPath.row)
            // И удаляем строку из таблицы
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }

   

}
