//
//  ViewController.swift
//  TerribleTodoList
//
//  Created by Kristopher Kane on 6/24/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupButtons()
        setupTextFields()
    }
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        streetField.placeholder = "Street"
        cityField.placeholder = "City"
        stateField.placeholder = "ST"
        zipField.placeholder = "Zip"
        emailField.placeholder = "Email"
        
        formatTextField(nameField)
        formatTextField(streetField)
        formatTextField(cityField)
        formatTextField(stateField)
        formatTextField(zipField)
        formatTextField(emailField)
    }
    
    func formatTextField(textField: UITextField) {
        if textField == zipField {
            textField.keyboardType = .NumberPad
        } else if textField == emailField {
            textField.keyboardType = .EmailAddress
        } else {
            textField.keyboardType = .ASCIICapable
        }
        
    }
    
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    
    @IBAction func submitAction(sender: UIButton) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showContact" {
            let destinationVC = segue.destinationViewController as! ContactViewController
                destinationVC.name      = nameField.text
                destinationVC.street    = streetField.text
                destinationVC.city      = cityField.text
                destinationVC.state     = stateField.text
                destinationVC.zip       = zipField.text
                destinationVC.email     = emailField.text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

