//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hjaseyyh Grursht on 22.03.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }   else if bmiValue < 24.9{
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.purple)
                }   else {
                    bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
                    }
        
    }
}

