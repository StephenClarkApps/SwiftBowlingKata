//
//  File.swift
//  
//
//  Created by Stephen Clark on 27/07/2022.
//

import Foundation

public class BowlingGame: Game {
    
    private var rolls: [Int] = [Int](repeating: 0, count: 21)
    private var currentRoll: Int = 0
    
    public var score: Int {
        get {
            var score = 0

            var rollIndex = 0
            var frame = 0
            
            for _ in 0...9 { // (0...9 i.e. 10 frames)
                
                // SPARE
                if (rolls[rollIndex] + rolls[rollIndex + 1] == 10) {
                    score += rolls[rollIndex] + rolls[rollIndex + 1] + rolls[rollIndex + 2]
                } else {
                    score += rolls[rollIndex] + rolls [rollIndex + 1]
                    
                }
                
                frame += 1
                rollIndex += 2
            }
            return score
        }
    }
    
    func roll(_ pins: Int) {
        rolls[currentRoll] = pins
        currentRoll += 1
    }
    
}

