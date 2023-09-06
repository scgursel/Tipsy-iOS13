//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Servet Can Gürsel on 5.09.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var tipAmount: String = ""
    
    var pplCount: String = "0"
    
    var percentange: String = "0"


    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var resultTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsLabel.text = tipAmount
        resultTextLabel.text = "Split between \(pplCount) people, with \(percentange) tip."

    }
    
 
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
