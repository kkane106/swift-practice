//
//  ViewController.swift
//  FloApp
//
//  Created by Kristopher Kane on 7/14/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        self.view = PushButtonView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
