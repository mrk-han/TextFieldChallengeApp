//
//  ViewController.swift
//  TextFieldChallengeApp
//
//  Created by Mark Han on 2/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: Outlets
    @IBOutlet var textfield1: UITextField!
    @IBOutlet var textfield2: UITextField!
    @IBOutlet var textfield3: UITextField!
    @IBOutlet var editableSwitch: UISwitch!


    let zipcodeDelegate = ZipcodeDelegate()
    let moneyDelegate = MoneyDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textfield1.delegate = zipcodeDelegate
        self.textfield2.delegate = moneyDelegate
        self.editableSwitch.isOn = false
        self.textfield3.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
    }
    
    
    @IBAction func makeEditable() {
        if editableSwitch.isOn {
            self.textfield3.isEnabled = true
        } else {
            self.textfield3.isEnabled = false
            self.textfield3.text = ""
        }
    }

    
    
}

