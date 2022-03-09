//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by omer faruk bozbulut on 3.03.2022.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var bmiAdvice : String?
    var bmiColor : UIColor?
   
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // Burası segueu çalışmadan önce yapılacak işlemler için
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
