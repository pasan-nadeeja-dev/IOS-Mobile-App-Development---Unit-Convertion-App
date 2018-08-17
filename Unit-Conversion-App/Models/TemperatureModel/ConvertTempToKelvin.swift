//
//  ConvertTempToKelvin.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertTempToKelvin: TemperatureModel {
    
    func convertToCelcius() -> ConvertTempToCelcius {
        return ConvertTempToCelcius(self.temperature * -272.15)
    }
    
    func convertToFahrenheit() -> ConvertTempToFahrenheit{
        return ConvertTempToFahrenheit(self.temperature * -457.87)
    }
}
