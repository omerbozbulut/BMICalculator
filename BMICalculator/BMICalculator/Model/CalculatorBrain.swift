//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by omer faruk bozbulut on 5.03.2022.
//

import UIKit

struct CalculatorBrain{
    
    var bmi : BMI?
    
    mutating func calculateBMI(weight:Float , height: Float){
        let bmiValue = weight/pow(height, 2)
        if bmiValue > 0 && bmiValue < 18 {
            bmi = BMI(value: bmiValue, color: .blue, advice: "Eat more pies!")
        }
        else if bmiValue > 17  && bmiValue < 25{
            bmi = BMI(value: bmiValue, color: .green, advice: "Fit as a fiddle!")
        }else if bmiValue > 24 && bmiValue < 30{
            bmi = BMI(value: bmiValue, color: .magenta, advice: "Eat less pies")
        }else if bmiValue > 29{
            bmi = BMI(value: bmiValue, color: .red, advice: "STOP EATİNG!")
        }
        
        
    }
    
    mutating func getBmiValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func getBmiAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    mutating func getBmiColor() -> UIColor{
        return bmi?.color ?? .white
    }
    
    }

