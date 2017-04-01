//
//  ViewController.swift
//  MiraclePills
//
//  Created by Ismail Hossain on 2017-03-31.
//  Copyright © 2017 Ismail Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    let provinces = ["Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]
    
    
    @IBOutlet weak var provinceBtnText: UIButton!
    @IBOutlet weak var provincePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        provincePicker.dataSource = self
        provincePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func provinceBtnPressed(_ sender: Any) {
        provincePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        provinceBtnText.setTitle(provinces[row], for: UIControlState.normal)
        provincePicker.isHidden = true
    }

}

