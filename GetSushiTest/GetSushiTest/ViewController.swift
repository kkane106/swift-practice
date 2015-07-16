//
//  ViewController.swift
//  GetSushiTest
//
//  Created by Kristopher Kane on 7/1/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var sushiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://swift-sushi-json.herokuapp.com/sushi.json").responseJSON() {
            (_, _, data, _) in
            println(data)
            var sushiData = (data!.valueForKey("sushi") as! NSArray)
            println("This is sushiData: \(sushiData)")
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

