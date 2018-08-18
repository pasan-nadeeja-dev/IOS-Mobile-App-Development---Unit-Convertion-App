//
//  ConvertSpeedToMPH.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertSpeedToMPH: SpeedModel {
    func convertToMetrePerSec() -> ConvertSpeedToMetrePerSec {
        return ConvertSpeedToMetrePerSec(self.speed * 0.44704)
    }
    
    func convertToFeetPerMinute() -> ConvertSpeedToFeetPerMinute {
        return ConvertSpeedToFeetPerMinute(self.speed * 88.0)
    }
    
    func convertToKMPH() -> ConvertSpeedToKMPH {
        return ConvertSpeedToKMPH(self.speed * 1.60934)
    }
}
