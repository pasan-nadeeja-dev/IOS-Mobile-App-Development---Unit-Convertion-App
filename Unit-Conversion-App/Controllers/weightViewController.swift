//
//  WeightViewController.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {
    
    @IBOutlet weak var gramTextField: UITextField!
    @IBOutlet weak var kilogramTextField: UITextField!
    @IBOutlet weak var poundTextField: UITextField!
    @IBOutlet weak var ounceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //gram text-field input value chnage on editing
    @IBAction func gram_convertion(_ sender: Any) {
        print(gramTextField.text ?? 0)
        let weight:ConvertWeightToGram = ConvertWeightToGram(Double(self.gramTextField.text!) ?? 0)
        
        self.kilogramTextField.text = String(weight.convertToKilogram().weight)
        self.poundTextField.text = String(weight.convertToPound().weight)
        self.ounceTextField.text = String(weight.convertToOunce().weight)
    }
    
    @IBAction func kilogram_conversion(_ sender: Any) {
        let weight:ConvertWeightToKilogram = ConvertWeightToKilogram(Double(self.kilogramTextField.text!) ?? 0)
        
        self.gramTextField.text = String(weight.convertToGram().weight)
        self.poundTextField.text = String(weight.convertToPound().weight)
        self.ounceTextField.text = String(weight.convertToOunce().weight)
    }
    
    @IBAction func pound_conversion(_ sender: Any) {
        let weight:ConvertWeightTopound = ConvertWeightTopound(Double(self.poundTextField.text!) ?? 0)
        
        self.gramTextField.text = String(weight.convertToGram().weight)
        self.kilogramTextField.text = String(weight.convertToKilogram().weight)
        self.ounceTextField.text = String(weight.convertToOunce().weight)
    }
    
    @IBAction func ounce_conversion(_ sender: Any) {
        let weight:ConvertWeightToOunce = ConvertWeightToOunce(Double(self.ounceTextField.text!) ?? 0)
        
        self.gramTextField.text = String(weight.convertToGram().weight)
        self.kilogramTextField.text = String(weight.convertToKilogram().weight)
        self.poundTextField.text = String(weight.convertToPound().weight)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func clearField(){
        self.gramTextField.text = ""
        self.kilogramTextField.text = ""
        self.ounceTextField.text = ""
        self.poundTextField.text = ""
    }
    
    @IBAction func kilogramTouchBegin(_ sender: Any) {
        clearField()
    }
    
    @IBAction func poundTouchBegin(_ sender: Any) {
        clearField()
    }
    
    @IBAction func ounceTouchBegin(_ sender: Any) {
        clearField()
    }
    
    @IBAction func gramTouchBegin(_ sender: Any) {
        clearField()
    }
    
    
    
    
    

}
