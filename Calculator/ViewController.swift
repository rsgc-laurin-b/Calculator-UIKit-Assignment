//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //connection to label in our view
    @IBOutlet weak var labelDisplay: UILabel!
    
    
    //create an instance (object) of the calculator class

    var model = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        labelDisplay.text = model.providedValue
    }

    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        labelDisplay.text = model.providedValue
    }
    
    
    
    
}

