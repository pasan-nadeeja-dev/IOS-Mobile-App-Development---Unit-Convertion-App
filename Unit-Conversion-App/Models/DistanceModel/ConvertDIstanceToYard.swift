//
//  ConvertDIstanceToYard.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertDistanceToYard: DistanceModel {
    
    func convertToMetre() -> ConvertDistanceToMetre {
        return ConvertDistanceToMetre(self.distance * 0.9144)
    }
    
    func convertToFoot() -> ConvertDistanceToFoot {
        return ConvertDistanceToFoot(self.distance * 3.0)
    }
    
    func convertToKilometre() -> ConvertDistanceToKilometre {
        return ConvertDistanceToKilometre(self.distance * 0.0009144)
    }
    
    func convertToMile() -> ConvertDistanceToMile {
        return ConvertDistanceToMile(self.distance * 0.000568182)
    }
}
