//
//  ConvertDistanceToMetre.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/18/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertDistanceToMetre: DistanceModel {
    
    func convertToFoot() -> ConvertDistanceToFoot {
        return ConvertDistanceToFoot(self.distance * 3.28084)
    }
    
    func convertToYard() -> ConvertDistanceToYard{
        return ConvertDistanceToYard(self.distance * 1.09361)
    }
    
    func convertToKilometre() -> ConvertDistanceToKilometre {
        return ConvertDistanceToKilometre(self.distance * 0.001)
    }
    
    func convertToMile() -> ConvertDistanceToMile {
        return ConvertDistanceToMile(self.distance * 0.000621371)
    }
    
}
