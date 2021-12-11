//
//  ViewController.swift
//  colorSlider
//
//  Created by Михаил Зверьков on 11.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var valueRed: UILabel!
    @IBOutlet weak var valueGreen: UILabel!
    @IBOutlet weak var valueBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        
        sliderRed.value = 0
        sliderBlue.value = 0
        sliderGreen.value = 0
    }

    @IBAction func redSliderAction() {
        valueRed.text = String(round(sliderRed.value * 100) / 100)
        colorView.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                            green: CGFloat(sliderGreen.value),
                            blue: CGFloat(sliderBlue.value),
                            alpha: 1)
    }
    @IBAction func greenSliderAction() {
        valueGreen.text = String(round(sliderGreen.value * 100) / 100)
        colorView.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                            green: CGFloat(sliderGreen.value),
                            blue: CGFloat(sliderBlue.value),
                            alpha: 1)
    }
    @IBAction func blueSliderAction() {
        valueBlue.text = String(round(sliderBlue.value * 100) / 100)
        colorView.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                            green: CGFloat(sliderGreen.value),
                            blue: CGFloat(sliderBlue.value),
                            alpha: 1)
    }
    

}

