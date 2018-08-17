//
//  ConvertTempToFahreheit.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertTempToFahrenheit: TemperatureModel {
    
    func convertToCelcius() -> ConvertTempToCelcius {
        return ConvertTempToCelcius(self.temperature * -17.2222)
    }
    
    func convertToKelvin() -> ConvertTempToKelvin{
        return ConvertTempToKelvin(self.temperature * 255.928)
    }
}
