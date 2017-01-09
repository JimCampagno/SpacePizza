//
//  ViewController.swift
//  SpacePizza
//
//  Created by Jim Campagno on 1/8/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//
  
import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var planetPickerView: UIPickerView!
    @IBOutlet weak var lowButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var highButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        planetPickerView.dataSource = self
        planetPickerView.delegate = self
        circleTheButtons()
    }
    
    func circleTheButtons() {
        let width = UIScreen.main.bounds.size.width
        let cornerRadius = (width * 0.2) / 2.0
        let buttons = [lowButton, mediumButton, highButton]
        for button in buttons {
            button?.layer.cornerRadius = cornerRadius
            button?.layer.masksToBounds = true
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Planet.all.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let planet = Planet.all[row]
        return planet.displayName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let planet = Planet.all[row]
        print(planet.displayName)
    }
    
    
    
    
    
    
    

}
