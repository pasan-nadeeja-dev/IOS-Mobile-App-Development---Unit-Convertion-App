//
//  ConvertTempToCelcius.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertTempToCelcius: TemperatureModel {
    
    func convertToFahrenheit() -> ConvertTempToFahrenheit {
        return ConvertTempToFahrenheit(self.temperature * 33.8)
    }
    
    func convertToKelvin() -> ConvertTempToKelvin{
        return ConvertTempToKelvin(self.temperature * 274.15)
    }
}
