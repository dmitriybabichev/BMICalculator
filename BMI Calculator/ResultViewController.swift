//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dmitriy Babichev on 05.02.2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var yourResultLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    var bmiValue: String?
    var color: UIColor?
    var advice: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

    func setupUI() {
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
}
