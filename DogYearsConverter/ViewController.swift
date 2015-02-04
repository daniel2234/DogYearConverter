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
        
        dogYearsLabel.text = "\(intFromOptional * 7)" + " Human Years"//displays label on
        enterHumanYearsTextField.resignFirstResponder()//hides keyboard after input
    }
    
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {//this function will follow the way you would calculate for
        let stringFromTextField = enterHumanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        if doubleFromTextField > 2{
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4 //this formula calculates the real dog years by taking the first 2 years multiplying it by 10.5 years and then after 2 years the value is multiplied by 4 years
        }else{
            realDogYears = doubleFromTextField * 10.5
        
        }
        dogYearsLabel.hidden=false
        dogYearsLabel.text="\(realDogYears)" + " Real Human Years"//string interpolation with label output
        enterHumanYearsTextField.resignFirstResponder()
    }

}

