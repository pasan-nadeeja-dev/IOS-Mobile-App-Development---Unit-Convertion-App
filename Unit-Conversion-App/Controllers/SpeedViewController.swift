//
//  SpeedViewController.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {
    
    @IBOutlet weak var metrePerSecTextfield: UITextField!
    @IBOutlet weak var footPerMinuteTextField: UITextField!
    @IBOutlet weak var kmphTextField: UITextField!
    @IBOutlet weak var mphTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func metre_per_sec_convertion(_ sender: Any) {
        let speed: ConvertSpeedToMetrePerSec = ConvertSpeedToMetrePerSec(Double(self.metrePerSecTextfield.text!) ?? 0)
        
        self.footPerMinuteTextField.text = String(speed.conevrtToFeetPerMinute().speed)
        self.kmphTextField.text = String(speed.convertToKMPH().speed)
        self.mphTextField.text = String(speed.convertToMPH().speed)
    }
    
    @IBAction func foot_per_minute_convertion(_ sender: Any) {
        let speed: ConvertSpeedToFeetPerMinute = ConvertSpeedToFeetPerMinute(Double(self.footPerMinuteTextField.text!) ?? 0)
        
        self.metrePerSecTextfield.text = String(speed.convertToMetrePerSec().speed)
        self.kmphTextField.text = String(speed.convertKMPH().speed)
        self.mphTextField.text = String(speed.convertToMPH().speed)
    }
    
    @IBAction func kmph_convertion(_ sender: Any) {
        let speed: ConvertSpeedToKMPH = ConvertSpeedToKMPH(Double(self.kmphTextField.text!) ?? 0)
        
        self.metrePerSecTextfield.text = String(speed.convertToMetrePerSec().speed)
        self.footPerMinuteTextField.text = String(speed.convertToFeetPerMinute().speed)
        self.mphTextField.text = String(speed.convertYoMPH().speed)
    }
    
    @IBAction func mph_convertion(_ sender: Any) {
        let speed: ConvertSpeedToMPH = ConvertSpeedToMPH(Double(self.mphTextField.text!) ?? 0)
        
        self.metrePerSecTextfield.text = String(speed.convertToMetrePerSec().speed)
        self.footPerMinuteTextField.text = String(speed.convertToFeetPerMinute().speed)
        self.kmphTextField.text = String(speed.convertToKMPH().speed)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //clear fields when click for input new values
    func clearFields() {
        self.metrePerSecTextfield.text = ""
        self.footPerMinuteTextField.text = ""
        self.kmphTextField.text = ""
        self.mphTextField.text = ""
    }
    
    @IBAction func metrePerSecTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func feetPerMinuteTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func kmphTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func mphTouchBegin(_ sender: Any) {
        clearFields()
    }
    
}
