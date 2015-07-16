//
//  DataTableViewController.swift
//  TableExample
//
//  Created by Kristopher Kane on 7/1/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class DataTableViewController: UITableViewController {

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LabelCell", forIndexPath: indexPath) as! UITableViewCell

        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"

        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
        
    }
}
