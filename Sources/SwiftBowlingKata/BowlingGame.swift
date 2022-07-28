//
//  File.swift
//  
//
//  Created by Stephen Clark on 27/07/2022.
//

import Foundation

public class BowlingGame: Game {
    
    private var rolls: [Int] = []
    
    public var score: Int {
        get {
            var score = 0
            for i in 0...(rolls.count - 1) {
                score += rolls[i]
            }
            return score
        }
    }
    
    func roll(_ pins: Int) {
        rolls.append(pins)
    }
    
}

