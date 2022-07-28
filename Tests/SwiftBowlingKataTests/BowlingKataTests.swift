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
        
        rollMany(pins: 0, rolls: 20)
        XCTAssertEqual(0, game.score)
    }
    
    func test_CanRollAllOnes() {
        rollMany(pins: 1, rolls: 20)
        XCTAssertEqual(20, game.score)
    }
    
    func test_CanRollSpare() {
        game.roll(5)
        game.roll(5)
        game.roll(3)
        rollMany(pins: 0, rolls: 17)
        XCTAssertEqual(16, game.score)
    }
    
    func test_canRollStrike() {
        game.roll(10)
        game.roll(3)
        game.roll(4)
        rollMany(pins: 0, rolls: 16)
        XCTAssertEqual(24, game.score)
    }
    
    func test_canRollPerfectGame() {
        rollMany(pins: 10, rolls: 12)
        XCTAssertEqual(300, game.score)
    }
    
    // MARK: - Helper Methods
    private func rollMany(pins: Int, rolls: Int) {
        
        for _ in 0...(rolls - 1) {
            game.roll(pins)
        }
    }
}
