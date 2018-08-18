//
//  DistanceViewController.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var metereTextField: UITextField!
    @IBOutlet weak var footTextField: UITextField!
    @IBOutlet weak var yardTextField: UITextField!
    @IBOutlet weak var kilometreTextField: UITextField!
    @IBOutlet weak var mileTextField: UITextField!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func metre_convertion(_ sender: Any) {
        let distance: ConvertDistanceToMetre = ConvertDistanceToMetre(Double(self.metereTextField.text!) ?? 0)
        
        self.footTextField.text = String(distance.convertToFoot().distance)
        self.yardTextField.text = String(distance.convertToYard().distance)
        self.kilometreTextField.text = String(distance.convertToKilometre().distance)
        self.mileTextField.text = String(distance.convertToMile().distance)
        
    }
    
    
    @IBAction func foot_convertion(_ sender: Any) {
        let distance: ConvertDistanceToFoot = ConvertDistanceToFoot(Double(self.footTextField.text!) ?? 0)
        
        self.metereTextField.text = String(distance.convertToKilometre().distance)
        self.yardTextField.text = String(distance.convertToYard().distance)
        self.kilometreTextField.text = String(distance.convertToKilometre().distance)
        self.mileTextField.text = String(distance.convertToMile().distance)
    }
    
    @IBAction func yard_convertion(_ sender: Any) {
        let distance: ConvertDistanceToYard = ConvertDistanceToYard(Double(self.yardTextField.text!) ?? 0)
        
        self.metereTextField.text = String(distance.convertToMetre().distance)
        self.footTextField.text = String(distance.convertToFoot().distance)
        self.kilometreTextField.text = String(distance.convertToKilometre().distance)
        self.mileTextField.text = String(distance.convertToMile().distance)
    }
    
    @IBAction func kilometre_convertion(_ sender: Any) {
        let distance: ConvertDistanceToKilometre = ConvertDistanceToKilometre(Double(self.kilometreTextField.text!) ?? 0)
        
        self.metereTextField.text = String(distance.convertToMetre().distance)
        self.footTextField.text = String(distance.convertToFoot().distance)
        self.yardTextField.text = String(distance.convertToYard().distance)
        self.mileTextField.text = String(distance.convertToMile().distance)
    }
    
    @IBAction func mile_convertion(_ sender: Any) {
        let distance: ConvertDistanceToMile = ConvertDistanceToMile(Double(self.mileTextField.text!) ?? 0)
        
        self.metereTextField.text = String(distance.convertToMetre().distance)
        self.footTextField.text = String(distance.convertToFoot().distance)
        self.yardTextField.text = String(distance.convertToYard().distance)
        self.kilometreTextField.text = String(distance.convertTokilometre().distance)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //clear fileds when touch for inputs
    func clearFields() {
        self.metereTextField.text = ""
        self.footTextField.text = ""
        self.yardTextField.text = ""
        self.kilometreTextField.text = ""
        self.mileTextField.text = ""
    }
    
    @IBAction func metreTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func footTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func yardTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func kilometreTouchBegin(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func mileTouchBegin(_ sender: Any) {
        clearFields()
    }
    

}
