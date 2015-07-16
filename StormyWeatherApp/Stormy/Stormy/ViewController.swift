//
//  ViewController.swift
//  Stormy
//
//  Created by Kristopher Kane on 6/24/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist")
        println(plistPath)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


