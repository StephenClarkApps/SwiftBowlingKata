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
            return rolls.reduce(0, +)
        }
    }
    
    func roll(_ pins: Int) {
        rolls.append(pins)
    }
    
}

