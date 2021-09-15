//import UIKit

let possibleString = "1945"
let convertPossibleString = Int(possibleString)

let impossibleString = "One thousand one hundred ten"
let convertImpossibleString = Int(impossibleString)

type(of: convertPossibleString)
type(of: convertImpossibleString)

var x1 = Int("12")
var x2 = Int(43.2)

type(of: x1)
type(of: x2)

var optionalChar: Optional<Character> = "a"
var xCoordinate: Int? = 12
xCoordinate
xCoordinate = nil
xCoordinate

var someOptional: Bool?
var optionalVar = Optional("stringValue")
optionalVar
optionalVar = nil
optionalVar
type(of: optionalVar)

var tuple: (code: Int, message: String)? = nil
tuple = (404, "page not found")

var tupleWithOptElements: (Int?, Int) = (nil, 100)
tupleWithOptElements.0
tupleWithOptElements.1

var a: Int? = 2
var b: Int = 4
// a + b ---------- doesn't work, use a! + b instead
a! + b


// ------------ Force unwrapping -------------

var optVar: Int? = 12
var intVar = 42
var result = optVar! + intVar
type(of: optVar!)

var optString: String? = "John Kennedy"
var unwrappedString = optString!

// ----------- Implicitly unwrapping --------------

var wrapInt: Double! = 12.4
wrapInt + 0.12

// ----------- Checking value existence ---------------

var optOne: UInt? = nil
var optTwo: UInt? = 42

optOne != nil
optTwo != nil

var fiveMarkCount: Int? = 8
var allCakesCount = 0
if fiveMarkCount != nil {
    let cakeForEachFiveMark = 2
    allCakesCount = cakeForEachFiveMark * fiveMarkCount!
}
allCakesCount

// ----------- Optional binding ------------

var markCount: Int? = 8
if let marks = markCount {
    print("There're \(marks)")
}

var pointX: Int? = 10
var pointY: Int? = 3

if let _ = pointX, let _ = pointY {
    print("Point is on the plane")
}

if let x = pointX, x > 5 {
    print("Point is 2 far from u")
}

var coinsInNewChest = "140"
var allCoinsCount = 1301

if let coins = Int(coinsInNewChest) {
    allCoinsCount += coins // no need to write coins! because value exists on init
} else {
    print("New dragon doesn't have any gold")
}

// ---------- Nil coalescing -----------

//var optionalInt: Int? = 20
var optionalInt: Int? = 20
var mustHaveResult = optionalInt ?? 0
