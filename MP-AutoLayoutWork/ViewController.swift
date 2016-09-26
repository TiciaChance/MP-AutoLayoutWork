//
//  ViewController.swift
//  MP-AutoLayoutWork
//
//  Created by Laticia Chance on 9/26/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    //data source for the picker and delegate to know when someone is swiping the view, when it stops and which data is selected so i can use it
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var chooseStateButton: UIButton!
    
    let states = [ "Pon De Floor", "Be Together", "Lean On", "Light It Up", "Powerful", "All My Love", "Watch Out For This", "Night riders"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.isHidden = true
        
        //when changes are made in statepicker look to the vc to see if they exist
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    @IBAction func stateButtonTapped(_ sender: AnyObject) {
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
    
        chooseStateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

