//
//  ViewController.swift
//  RGBApp
//
//  Created by Kir Pir on 25.05.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbView.layer.cornerRadius = 10
        
        // Red slider
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        redValueLabel.text = String(
            format:"%.2f",
            redSlider.value
        )
        
        // Green slider
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        greenValueLabel.text = String(
            format:"%.2f",
            greenSlider.value
        )
        
        // Blue slider
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        blueValueLabel.text = String(
            format:"%.2f",
            blueSlider.value
        )

    }
    
    @IBAction func redSliderAction() {
        
        redValueLabel.text = String(format:"%.2f", redSlider.value)
        
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func greenSliderAction() {
        
        greenValueLabel.text = String(format:"%.2f", greenSlider.value)
        
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func blueSliderAction() {
        
        blueValueLabel.text = String(format:"%.2f", blueSlider.value)
        
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}

