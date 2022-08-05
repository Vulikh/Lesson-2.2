//
//  ViewController.swift
//  Lesson 2.2
//
//  Created by Федор Вулих on 29.05.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
  
    
    @IBOutlet weak var redColorValue: UILabel!
    @IBOutlet weak var greenColorValue: UILabel!
    @IBOutlet weak var blueColorValue: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        redColorValue.text = String(format: "%.3f", redColorSlider.value)
        greenColorValue.text = String(format: "%.3f", greenColorSlider.value)
        blueColorValue.text = String(format: "%.3f", blueColorSlider.value)
        changeViewColor()
    }
    
    func changeViewColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    
    @IBAction func redColorSliderValueChange() {
        changeViewColor()
        redColorValue.text = String(format: "%.3f", redColorSlider.value)
    }


    @IBAction func greenColorSliderValueChange() {
        changeViewColor()
        greenColorValue.text = String(format: "%.3f", greenColorSlider.value)
    }

    
    @IBAction func blueColorSliderValueChange() {
        changeViewColor()
        blueColorValue.text = String(format: "%.3f", blueColorSlider.value)
    }
    

}

