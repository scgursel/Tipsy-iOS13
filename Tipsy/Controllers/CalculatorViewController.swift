//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipResult = "0"
    var tipPercentange: String = ""

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let tipPct = sender.titleLabel?.text!
        tipPercentange = tipPct!
        print(tipPercentange)
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let totalBill = Float(billTextField.text ?? "0")
        let splitNumber = Float(splitNumberLabel.text ?? "0")
        if zeroPctButton.isSelected{
            tipResult = "0"
            self.performSegue(withIdentifier: "resultScreen", sender: self)
        }
        else if(tenPctButton.isSelected){
            tipResult = String(((totalBill! * 0.1) / splitNumber!))
            self.performSegue(withIdentifier: "resultScreen", sender: self)

        }
        else{
            tipResult = String((totalBill! * 0.2 ) / splitNumber!)
            self.performSegue(withIdentifier: "resultScreen", sender: self)

        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultScreen"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.pplCount = splitNumberLabel.text ?? "0"
            destinationVC.tipAmount = tipResult
            destinationVC.percentange = tipPercentange
        }
    }
    
}

