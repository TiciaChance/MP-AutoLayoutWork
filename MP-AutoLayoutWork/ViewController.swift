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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.isHidden = true
        
        //when changes are made in statepicker look to the vc to see if they exist
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    @IBAction func stateButtonTapped(_ sender: AnyObject) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return " "
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

