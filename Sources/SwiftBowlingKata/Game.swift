import Foundation

protocol Game {

    func roll(_ pins: Int)

    var score: Int { get }

}
