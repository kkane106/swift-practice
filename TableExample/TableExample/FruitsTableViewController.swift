//
//  FruitsTableViewController.swift
//  TableExample
//
//  Created by Kristopher Kane on 7/1/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class FruitsTableViewController: UITableViewController {
    var data = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
        "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
        "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
        "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
        "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FruitCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.editing = true
    }

}
