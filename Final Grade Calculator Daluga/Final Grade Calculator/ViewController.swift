//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by user170714 on 12/4/20.
//  Copyright © 2020 Jacob D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var gradeSegment: UISegmentedControl!
    
    @IBOutlet weak var extraCreditLabel: UILabel!
    @IBOutlet weak var gradeNeededButton: UIButton!
    @IBOutlet weak var currentGradeTextfield: UITextField!
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var examWorthTextField: UITextField!
    
    @IBOutlet weak var gradeneededLabel: UILabel!
    
    var examWorth = 0.0
    var currentGrade = 0.0
    var desiredGrade = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradeneededLabel.backgroundColor = UIColor.white
        gradeNeededButton.backgroundColor = UIColor.white
        }
    
      @IBAction func gradeAction(_ sender: UISegmentedControl) {
        view.endEditing(true)
        switch sender.selectedSegmentIndex {
            
            case 0: desiredGradeTextField.text = String(0.90)
            desiredGrade = 0.90
            case 1: desiredGradeTextField.text = String(0.80)
            desiredGrade = 0.80
            case 2: desiredGradeTextField.text = String(0.70)
            desiredGrade = 0.70
            case 3: desiredGradeTextField.text = String(0.60)
            desiredGrade = 0.60
            default:
                break
        }
    }

    
    
@IBAction func gradeButton(_ sender: UIButton) {
        examWorthTextField.resignFirstResponder()
        
         examWorth = Double(examWorthTextField.text!)!
         currentGrade = Double(currentGradeTextfield.text!)!
         desiredGrade = Double(desiredGradeTextField.text!)!

        let type = (desiredGrade - currentGrade * (1 - examWorth)) / examWorth
        gradeneededLabel.text = String(type)
        
        var hello = Double(gradeneededLabel.text!)!
        if hello > 100 {
            view.backgroundColor = UIColor.red
            extraCreditLabel.text = "Ask your teacher for extra credit!"
            extraCreditLabel.backgroundColor = UIColor.white
        }
        else {
            view.backgroundColor = UIColor.green
        }
    }
  
}


