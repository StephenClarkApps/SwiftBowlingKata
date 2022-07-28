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
    
    var score: Int {
        get {
            var score = 0

            var rollIndex = 0
            var frame = 0
            
            for _ in 0...9 { // (0...9 i.e. 10 frames)
                
                // SPARE
                if (isSpare(rollIndex)) {
                    score += getSpareScore(rollIndex)
                } else {
                    score += getStandardScore(rollIndex)
                    
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
    
    // MARK: - Helper Methods
    fileprivate func isSpare(_ rollIndex: Int) -> Bool {
        return rolls[rollIndex] + rolls[rollIndex + 1] == 10
    }
    
    fileprivate func getSpareScore(_ rollIndex: Int) -> Int {
        return rolls[rollIndex] + rolls[rollIndex + 1] + rolls[rollIndex + 2]
    }
    
    fileprivate func getStandardScore(_ rollIndex: Int) -> Int {
        return rolls[rollIndex] + rolls [rollIndex + 1]
    }
    
}

