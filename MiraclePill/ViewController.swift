//
//  ViewController.swift
//  MiraclePill
//
//  Created by Abhishek Sisodia on 2017-02-11.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var successIndicator: UIImageView!
    
    let states = ["Ontario", "Alberta", "Manitoba", "British Columbia"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self;
        statePicker.delegate = self;
    }

    @IBAction func buyNowPressed(_ sender: Any) {
        self.successIndicator.isHidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
    
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
    }
}

