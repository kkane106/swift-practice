//
//  ContactViewController.swift
//  TerribleTodoList
//
//  Created by Kristopher Kane on 6/24/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    var name: String?
    var street: String?
    var city: String?
    var state: String?
    var zip: String?
    var email: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            nameLabel.text = name
        }
        
        if let street = street {
            streetLabel.text = street
        }
        
//        if let city = city {
//            cityLabel.text = city
//        }
        
        if let state = state {
            stateLabel.text = state
        }
        
        if let zip = zip {
            zipLabel.text = zip
        }
        
        if let email = email {
            emailLabel.text = email
        }
        // Do any additional setup after loading the view.
    }

}
