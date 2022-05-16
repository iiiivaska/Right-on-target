//
//  Generator.swift
//  Right on target
//
//  Created by Василий Буланов on 21.04.2022.
//

import Foundation

protocol GeneratorProtocol {
    func getRandomValue() -> Int
}

class Generator: GeneratorProtocol {
    private let startRangeValue: Int
    private let endRangeValue: Int
    
    init?(startValue: Int, endValue: Int) {
        if startValue >= endValue {
            return nil
        }
        startRangeValue = startValue
        endRangeValue = endValue
    }
    
    func getRandomValue() -> Int {
        (0...50).randomElement()!
    }
}
