//
//  File.swift
//  
//
//  Created by Stephen Clark on 27/07/2022.
//

import Foundation

public class BowlingGame: Game {
    
    private var playerScore = 0
    
    func roll(_ pins: Int) {
        playerScore += pins
    }
    
    func score() -> Int {
        return playerScore
    }
}

