//
//  ConvertSpeedToKMPH.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertSpeedToKMPH: SpeedModel {
    func convertToMetrePerSec() -> ConvertSpeedToMetrePerSec {
        return ConvertSpeedToMetrePerSec(self.speed * 0.277778)
    }
    
    func convertToFeetPerMinute() -> ConvertSpeedToFeetPerMinute {
        return ConvertSpeedToFeetPerMinute(self.speed * 54.6807)
    }
    
    func convertYoMPH() -> ConvertSpeedToMPH {
        return ConvertSpeedToMPH(self.speed * 0.621371)
    }
}
