//
//  ConvertDistanceToMile.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertDistanceToMile: DistanceModel {
    
    func convertToMetre() -> ConvertDistanceToMetre {
        return ConvertDistanceToMetre(self.distance * 1609.34)
    }
    
    func convertToFoot() -> ConvertDistanceToFoot {
        return ConvertDistanceToFoot(self.distance * 5280.0)
    }
    
    func convertToYard() -> ConvertDistanceToYard {
        return ConvertDistanceToYard(self.distance * 1760.0)
    }
    
    func convertTokilometre() -> ConvertDistanceToKilometre {
        return ConvertDistanceToKilometre(self.distance * 1.60934)
    }
}
