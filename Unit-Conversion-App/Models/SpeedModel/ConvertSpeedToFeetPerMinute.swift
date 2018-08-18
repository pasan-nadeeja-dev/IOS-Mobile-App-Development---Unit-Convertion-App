//
//  ConvertSpeedToFeetPerMinute.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertSpeedToFeetPerMinute: SpeedModel {
    func convertToMetrePerSec() -> ConvertSpeedToMetrePerSec {
        return ConvertSpeedToMetrePerSec(self.speed * 0.00508)
    }
    
    func convertKMPH() -> ConvertSpeedToKMPH {
        return ConvertSpeedToKMPH(self.speed * 0.018288)
    }
    
    func convertToMPH() -> ConvertSpeedToMPH {
        return ConvertSpeedToMPH(self.speed * 0.0113636)
    }
}
