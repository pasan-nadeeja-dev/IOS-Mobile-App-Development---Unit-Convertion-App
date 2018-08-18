//
//  ConvertDistanceToFoot.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertDistanceToFoot: DistanceModel {
    
    func convertToMetre() -> ConvertDistanceToMetre {
        return ConvertDistanceToMetre(self.distance * 0.3048)
    }
    
    func convertToYard() -> ConvertDistanceToYard {
        return ConvertDistanceToYard(self.distance * 0.333333)
    }
    
    func convertToKilometre() -> ConvertDistanceToKilometre {
        return ConvertDistanceToKilometre(self.distance * 0.0003048)
    }
    
    func convertToMile() -> ConvertDistanceToMile {
        return ConvertDistanceToMile(self.distance * 0.000189394)
    }
}
