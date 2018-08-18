//
//  ConvertDistanceToKilometre.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertDistanceToKilometre: DistanceModel {
    
    func convertToMetre() -> ConvertDistanceToMetre {
        return ConvertDistanceToMetre(self.distance * 1000.0)
    }
    
    func convertToFoot() -> ConvertDistanceToFoot {
        return ConvertDistanceToFoot(self.distance * 3280.84)
    }
    
    func convertToYard() -> ConvertDistanceToYard {
        return ConvertDistanceToYard(self.distance * 1093.61)
    }
    
    func convertToMile() -> ConvertDistanceToYard {
        return ConvertDistanceToYard(self.distance * 0.621371)
    }
    
}
