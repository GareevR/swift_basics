import UIKit

var myArray = [2, 4, 5, 7]

//.............map method............

//var newArray = myArray.map{$0}

//var newArray = myArray.map({
//    (value: Int) -> Int in
//    return value
//})

var newArray = myArray.map{value in value}
newArray
type(of: newArray)
newArray = newArray.map{$0 * $0}
newArray

var intArray = [1, 2, 3, 4]
var boolArray = intArray.map{$0 > 2}
boolArray

let numbers = [1, 2, 3, 4]
var mapped = numbers.map{Array(repeating: $0, count: $0)}
mapped

let milesToDest = ["Moscow": 120.0, "Dubai": 50.0, "Paris": 70.0]
var kmToDest = milesToDest.map{name, miles in [name: miles * 1.6093]}
kmToDest

var mappedCloseStars = ["Proxima Centauri": 4.24, "Alpha Centauri A": 4.37]
var newCollection = mappedCloseStars.mapValues{$0 + 1}
newCollection

//................ filter method ..............

let numArray = [1, 4, 10, 15]
let even = numArray.filter{ $0 % 2 == 0 }
even

var starDistanceDict = ["Wolf 359": 7.78, "Alpha Centauri B": 4.37,
"Barnard's Star": 5.96]
let closeStars = starDistanceDict.filter{$0.value < 5.0}
closeStars

//............. reduce method ...............

let cash = [10, 50, 100, 500]
//let total = cash.reduce(210, {$0 + $1}) // -> same as
let total = cash.reduce(210, +)
total

let multiTotal = cash.reduce(210, {$0 * $1})
multiTotal
let totalThree = cash.reduce(210, {a, b in a - b})
totalThree

//............ flatMap method ...............

let numbersArray = [1, 2, 3, 4]
let flatMapped = numbersArray.flatMap{Array(repeating: $0, count: $0)}
flatMapped

let someArray = [[1, 2, 3, 4, 5], [11, 44, 1, 6], [16, 403, 321, 10]]
let filterSomeArray = someArray.flatMap{$0.filter{$0 % 2 == 0}}
filterSomeArray

//............. zip method ...................

let collectionOne = [1, 2, 3]
let collectionTwo = [4, 5, 6]
var zipSequence = zip(collectionOne, collectionTwo)
type(of: zipSequence)
var someNewArray = Array(zipSequence)
let newDictionary = Dictionary(uniqueKeysWithValues: zipSequence)
newDictionary

//............. guard with optional values .............

func countSidesOfShape(shape: String) -> Int? {
    switch shape {
    case "triangle":
        return 3
    case "square":
        return 4
    case "rectangle" :
        return 4
    default:
        return nil
    }
}

func maybePrintCountSides(shape: String) {
    guard let sides = countSidesOfShape(shape: shape) else {
        print("Unknown sides count of shape \"\(shape)\"")
        return
    }
    print("Shape \(shape) has \(sides) sides")
}

maybePrintCountSides(shape: "triangle")
