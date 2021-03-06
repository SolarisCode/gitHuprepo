//
//  ViewController.swift
//  Mircal Pills
//
//  Created by Mohammed Elkholy on 5/7/17.
//  Copyright © 2017 Mohammed Elkholy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statPicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    let states = ["Abu Dhabi", "Dubai", "Ajman", "Fujarah", "Ras Alkhaymah", "Al Ain"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       statPicker.dataSource = self
        statPicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

      @IBAction func stateBtnPressed(_ sender: Any) {
        statPicker.isHidden = false
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
        //UIControlState()
        statPicker.isHidden = true
    }
}













