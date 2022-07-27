@testable import SwiftBowlingKata
import XCTest

final class SwiftBowlingKataTests: XCTestCase {

    
    func test_canCreateGame() {
        var game = BowlingGame()
    }
    
    func test_canRollGutterGame() {
        var game = BowlingGame()
        
        // a gutter game is where a player scores nada
        // in this context there would be no extra go
        // so the player would have two turns per frame
        // and there are 10 frames so 20 turns
        
        for i in 0...19 {
            game.roll(0)
        }
        
        XCTAssertEqual(0, game.score)
    }
}
