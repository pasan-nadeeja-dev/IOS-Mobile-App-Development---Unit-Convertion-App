//
//  ConvertWeightToKilogram.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertWeightToKilogram: WeightModel {
    
    func convertToGram() -> ConvertWeightToGram {
        return ConvertWeightToGram(self.weight * 1000.0)
    }
    
    func convertToPound() -> ConvertWeightTopound{
        return ConvertWeightTopound(self.weight * 2.20462)
    }
    
    func convertToOunce() -> ConvertWeightToOunce{
        return ConvertWeightToOunce(self.weight * 35.274)
    }
}
