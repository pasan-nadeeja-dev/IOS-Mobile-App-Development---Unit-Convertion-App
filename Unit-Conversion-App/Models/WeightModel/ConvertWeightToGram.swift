//
//  ConvertWeightToGram.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class ConvertWeightToGram : WeightModel {
    
    func convertToKilogram() -> ConvertWeightToKilogram {
        return ConvertWeightToKilogram(self.weight / 1000.0)
    }
    
    func convertToPound() -> ConvertWeightTopound {
        return ConvertWeightTopound(self.weight * 0.00220462)
    }
    
    func convertToOunce() -> ConvertWeightToOunce {
        return ConvertWeightToOunce(self.weight * 0.035274)
    }
}
