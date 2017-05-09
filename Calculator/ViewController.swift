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
        
        // Clear the contents of the label
        labelDisplay.text = ""
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
    
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func decimalPressed(_ sender: Any) {
        model.addToNewValue(digit: ".")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func multipy(_ sender: Any) {
        model.multiply()
    }
    
    @IBAction func divide(_ sender: Any) {
        model.divide()
    }
    
    @IBAction func subtract(_ sender: Any) {
        model.subtract()
    }
    
    @IBAction func add(_ sender: Any) {
        model.add()
    }

    @IBAction func equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil{
        labelDisplay.text = String(format: "%g", model.computedValue! )
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        model.clear()
        labelDisplay.text = String("")
    }
  
    @IBAction func plusMinusPressed(_ sender: Any) {
        model.plusminus()
        labelDisplay.text = String(format: "%g", model.computedValue! )
    }
    
    @IBAction func percentPressed(_ sender: Any) {
        model.percentage()
        labelDisplay.text = String(format: "%g", model.computedValue! )
    }
}

