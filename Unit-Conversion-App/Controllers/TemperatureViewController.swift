//
//  TemperatureViewController.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var celciusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func celcius_conversion(_ sender: Any) {
        print(celciusTextField.text ?? 0)
        let temp:ConvertTempToCelcius = ConvertTempToCelcius(Double(self.celciusTextField.text!) ?? 0)
        
        self.fahrenheitTextField.text = String(temp.convertToFahrenheit().temperature)
        self.kelvinTextField.text = String(temp.convertToKelvin().temperature)
    }
    
    
    @IBAction func fahrenheit_conversion(_ sender: Any) {
        let temp:ConvertTempToFahrenheit = ConvertTempToFahrenheit(Double(self.fahrenheitTextField.text!) ?? 0)
        
        self.celciusTextField.text = String(temp.convertToCelcius().temperature)
        self.kelvinTextField.text = String(temp.convertToKelvin().temperature)
    }
    
    
    @IBAction func kelvin_conversion(_ sender: Any) {
        let temp:ConvertTempToKelvin = ConvertTempToKelvin(Double(self.kelvinTextField.text!) ?? 0)
        
        self.celciusTextField.text = String(temp.convertToCelcius().temperature)
        self.fahrenheitTextField.text = String(temp.convertToFahrenheit().temperature)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func clearField(){
        self.celciusTextField.text = ""
        self.fahrenheitTextField.text = ""
        self.kelvinTextField.text = ""
    }
    
    @IBAction func celciusTouchBegin(_ sender: Any) {
        clearField()
    }
    
    @IBAction func fahrenheitTouchBegin(_ sender: Any) {
        clearField()
    }
    
    @IBAction func kelvinTouchBegin(_ sender: Any) {
        clearField()
    }
    
    
    

}
