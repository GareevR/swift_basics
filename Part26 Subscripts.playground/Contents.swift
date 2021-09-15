import UIKit

class Chessman {
    enum ChessmanType {
        case king, castle, bishop, pawn, knight, queen
    }

    enum ChessmanColor {
        case black, white
    }
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    // init without start coordinates
    init(type: ChessmanType, color: ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    // init including start coordinates
    init(type: ChessmanType, color: ChessmanColor, figure: Character, coordinates: (String, Int)) {
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    // coordinates setter
    func setCoordinates(char c: String, num n: Int) {
        self.coordinates = (c, n)
    }
    // method killing the figure
    func kill() {
        self.coordinates = nil
    }
}

class GameDesk {
    var desk: [Int:[String: Chessman]] = [:]
    init () {
        for i in 1...8 {
            desk[i] = [:]
        }
    }
    // Subscript
    subscript(alpha: String, number: Int) -> Chessman? {
        get {
//            if self.checkOnBoard(alpha: alpha, number: number) {
                return self.desk[number]![alpha]
//            }
//            print("Coordinates out of range")
//            return nil
        }
        set {
            if let chessMan = newValue {
                self.setChessman(chess: chessMan, coordinates: (alpha, number))
            } else {
                self.desk[number]![alpha] = nil
            }
        }
    }
    func setChessman(chess: Chessman, coordinates: (String, Int)) {
        if self.checkOnBoard(alpha: coordinates.0, number: coordinates.1) {
            self.desk[coordinates.1]![coordinates.0] = chess //optional value when extracted from dictionary
            chess.setCoordinates(char: coordinates.0, num: coordinates.1)
        } else {
            print("Coordinates out of range")
        }
    }
    private func checkOnBoard(alpha: String, number: Int) -> Bool {
        let rowRange = 1...8
        let colRange = "A"..."H"
        if (rowRange.contains(number) && colRange.contains(alpha)) {
            return true
        }
        return false
    }
}

var game = GameDesk()
var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{265B}", coordinates: ("A", 6))
game.setChessman(chess: queenBlack, coordinates: ("B", 2))
queenBlack.coordinates
game.setChessman(chess: queenBlack, coordinates: ("A", 3))
queenBlack.coordinates
game["A", 3]?.coordinates // question mark for checking the existence of ["A", 3] Chessman
game["C",5] = queenBlack
game["C",5]
game["C",5] = nil
game["C",5]

