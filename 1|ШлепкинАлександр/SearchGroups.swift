//
//  SearchGroups.swift
//  1|ШлепкинАлександр
//
//  Created by Александр Шлепкин on 29.04.2021.
//

import UIKit

class SearchGroups: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
