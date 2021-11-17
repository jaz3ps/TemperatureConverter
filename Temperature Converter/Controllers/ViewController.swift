//
//  ViewController.swift
//  Temperature Converter
//
//  Created by jazeps.ivulis on 15/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var outputTempLabel: UILabel!
    @IBOutlet weak var celsiusSlider: UISlider!
    @IBOutlet weak var switchFahrenheitOrKelvin: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celsiusSlider.value = 0
    }

    @IBAction func sliderConvertTemp(_ sender: Any) {
        
        let sliderTempValue = celsiusSlider.value
        
        celsiusLabel.text = String(format: "%.2f", sliderTempValue) + " °C"
        
        if switchFahrenheitOrKelvin.selectedSegmentIndex == 0 {
            let fahrenheitValue = ((sliderTempValue * 9) / 5) + 32
            outputTempLabel.text = String(format: "%.2f", fahrenheitValue) + " °F"
        }else{
            let kelvinValue = sliderTempValue + 273.15
            outputTempLabel.text = String(format: "%.2f", kelvinValue) + " K"
        }
    }
    
    @IBAction func didSegmentChange(_ sender: UISegmentedControl) {
        sliderConvertTemp(celsiusSlider ?? 0)
    }
}

