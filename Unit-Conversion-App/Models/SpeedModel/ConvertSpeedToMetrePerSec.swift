//
//  ConvertSpeedToMetrePerSec.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertSpeedToMetrePerSec: SpeedModel {
    
    func conevrtToFeetPerMinute() -> ConvertSpeedToFeetPerMinute {
        return ConvertSpeedToFeetPerMinute(self.speed * 196.85)
    }
    
    func convertToKMPH() -> ConvertSpeedToKMPH {
        return ConvertSpeedToKMPH(self.speed * 3.6)
    }
    
    func convertToMPH() -> ConvertSpeedToMPH {
        return ConvertSpeedToMPH(self.speed * 2.23694)
    }
}
