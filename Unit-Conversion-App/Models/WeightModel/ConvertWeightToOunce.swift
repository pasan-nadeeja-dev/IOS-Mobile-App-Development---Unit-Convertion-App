//
//  ConvertWeightToOunce.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation
class ConvertWeightToOunce: WeightModel {
    
    func convertToGram() -> ConvertWeightToGram {
        return ConvertWeightToGram(self.weight * 28.3495)
    }
    
    func convertToKilogram() -> ConvertWeightToKilogram {
        return ConvertWeightToKilogram(self.weight * 0.0283495)
    }
    
    func convertToPound() -> ConvertWeightTopound {
        return ConvertWeightTopound(self.weight * 0.0625)
    }
}
