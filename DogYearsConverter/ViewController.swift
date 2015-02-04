//
//  ViewController.swift
//  DogYearsConverter
//
//  Created by Daniel Kwiatkowski on 2015-02-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel! //title label
    @IBOutlet weak var enterHumanYearsTextField: UITextField! //User input

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text //grabs the string from User input
        let optionalIntFromTextField = stringFromTextField.toInt() // wraps the string value into an optional
        let intFromOptional = optionalIntFromTextField! //unwraps the optional into an integer value
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(intFromOptional * 7)" + " Human Years"
        
        enterHumanYearsTextField.resignFirstResponder()
    }

}

