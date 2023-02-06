//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dmitriy Babichev on 06.02.2023.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?

    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            let color = #colorLiteral(red: 0.8851481217, green: 0.8156090561, blue: 1, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Нужно есть больше", color: color)
        } else if bmiValue < 24.9 {
            let color = #colorLiteral(red: 0.7931519483, green: 1, blue: 0.9055397159, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Все отлично!", color: color)
        } else {
            let color = #colorLiteral(red: 0.8851481217, green: 0.8156090561, blue: 1, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Нужно есть меньше", color: color)
        }
    }

    func getValue() -> String {
        String(format: "%.1f", bmi?.value ?? 0.0)
    }

    func getColor() -> UIColor {
        bmi?.color ?? #colorLiteral(red: 0.9176470588, green: 0.9921568627, blue: 0.9882352941, alpha: 1)
    }

    func getAdvice() -> String {
        bmi?.advice ?? "No advice"
    }
}
