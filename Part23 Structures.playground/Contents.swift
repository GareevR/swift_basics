import UIKit

struct ChessPlayer {
    var name: String = "Player"
    var wins: UInt = 0
    
    init(name: String) {
        self.name = name
    }
    func description() {
        print("Chess player \(self.name) - Wins count: \(wins)")
    }
    mutating func win(count: UInt = 1) {
        self.wins += count
    }
}

//var james = ChessPlayer.init(name: "James", wins: 10)
//var oleg = ChessPlayer(name: "Oleg", wins: 5)
//type(of: oleg)
//var john = ChessPlayer(name: "John", wins: 34)
//var player = ChessPlayer()
//john.name
//player.name

var helga = ChessPlayer(name: "Helga")
var olegMuhin = ChessPlayer(name: "Oleg")
var olegLapin = olegMuhin
var jane = ChessPlayer(name: "Jane")
jane.win()
jane.description()
helga.description()
helga.win(count: 3)
helga.description()
