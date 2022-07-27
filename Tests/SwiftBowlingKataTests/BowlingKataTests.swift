@testable import SwiftBowlingKata
import XCTest

final class SwiftBowlingKataTests: XCTestCase {

    private var game: BowlingGame!
    
    override func setUp() {
        game = BowlingGame()
    }
    
    func test_canRollGutterGame() {
        
        // a gutter game is where a player scores nada
        // in this context there would be no extra go
        // so the player would have two turns per frame
        // and there are 10 frames so 20 turns
        
        for i in 0...19 {
            game.roll(0)
        }
        
        XCTAssertEqual(0, game.score())
    }
    
    func test_CanRollAllOnes() {
        
        for i in 0...19 {
            game.roll(1)
        }
        
        XCTAssertEqual(20, game.score())
    }
}
