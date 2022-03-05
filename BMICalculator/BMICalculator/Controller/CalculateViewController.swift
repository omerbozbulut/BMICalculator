//
//  ViewController.swift
//  BMICalculator
//
//  Created by omer faruk bozbulut on 20.02.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var BMI = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func HeightSliderChanged(_ sender: UISlider) {
        HeightLabel.text=String(format: "%.2f", sender.value)+"m"
    }
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) { WeightLabel.text=String(format:"%.0f", (sender.value*100))+"Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let Weight = weightSlider.value*100
        let height = heightSlider.value
        let bmiValue = Weight/pow(height, 2)
        BMI = String(format: "%.1f", bmiValue)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = BMI
            
        }
    }
    
}

