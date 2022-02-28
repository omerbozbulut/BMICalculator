//
//  ViewController.swift
//  BMICalculator
//
//  Created by omer faruk bozbulut on 20.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HeightLabel: UILabel!
    
    @IBOutlet weak var WeightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func HeightSliderChanged(_ sender: UISlider) {
        HeightLabel.text=String(format: "%.2f", sender.value)+"m"
    }
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) { WeightLabel.text=String(format:"%.0f", (sender.value*100))+"Kg"
    }
    
    
    
    
}

