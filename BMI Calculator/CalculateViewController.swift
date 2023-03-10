//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Dmitriy Babichev on 05.02.2023.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var bmiValue = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let height = (String(format: "%.0f", sender.value))
        heightLabel.text = "\(height) см"
    }

    @IBAction func weightChanged(_ sender: UISlider) {
        let weight = (String(format: "%.0f", sender.value))
        weightLabel.text = "\(weight) кг"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value / 100
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)

        bmiValue = String(format: "%.1f", bmi)

        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }

    func setupUI() {

    }
}

