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

//var kingWhite = Chessman(type: "King", color: "White", figure: "\u{2654}")
var kingWhite = Chessman(type: .king, color: .white, figure: "\u{2654}")
kingWhite.setCoordinates(char: "E", num: 1)
var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{2655}", coordinates: ("A", 6))

var linkToEnumType = Chessman.ChessmanType.bishop
