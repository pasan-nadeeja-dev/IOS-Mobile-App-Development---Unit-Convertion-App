//
//  ConvertWeightTopound.swift
//  Unit-Conversion-App
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation
class ConvertWeightTopound: WeightModel {
    
    func convertToGram() -> ConvertWeightToGram {
        return ConvertWeightToGram(self.weight * 453.592)
    }
    
    func convertToKilogram() -> ConvertWeightToKilogram {
        return ConvertWeightToKilogram(self.weight * 0.453592)
    }
    
    func convertToOunce() -> ConvertWeightToOunce {
        return ConvertWeightToOunce(self.weight * 16)
    }
}
