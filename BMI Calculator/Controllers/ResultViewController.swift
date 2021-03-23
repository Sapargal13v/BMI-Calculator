//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Hjaseyyh Grursht on 18.03.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var Ucolor: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = Ucolor
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
