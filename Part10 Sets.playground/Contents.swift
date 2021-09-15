import UIKit

// All ways to create sets

var dishes: Set<String> = ["хлеб", "овощи", "водка", "вода"]
var dishesTwo: Set = ["хлеб", "овощи", "водка", "вода"]
var members = Set<String>(arrayLiteral: "Enakin", "Obi-Wan", "Yoda")
var membersTwo = Set(arrayLiteral: "Enakin", "Obi-Wan", "Yoda")

dishes
dishesTwo
members
membersTwo

// Empty set

var emptySet = Set<String>()
var setWithValues: Set<String> = ["cola", "fanta"]

setWithValues = []

// Working with sets

var musicStyleSet: Set<String> = []
musicStyleSet.insert("Classical")
musicStyleSet
musicStyleSet = ["Jazz", "Hip-hop", "Rock"]

var removedStyleResult = musicStyleSet.remove("Jazz")
removedStyleResult
musicStyleSet
musicStyleSet.remove("Classical") // nil returned
musicStyleSet.removeAll()

musicStyleSet = ["Rock", "Rap", "Hip-Hop", "House"]
musicStyleSet.contains("House")
musicStyleSet.contains("Funk")
musicStyleSet.count

let evenDigits: Set = [0, 2, 4, 6, 8]
let oddDigits: Set = [1, 3, 5, 7, 9]
var differentDigits: Set = [3, 4, 7, 8]

// Get mutual elements of 2 sets
var inter = differentDigits.intersection(oddDigits)
inter

// Get different values of 2 sets
var exclusive = differentDigits.symmetricDifference(oddDigits)
exclusive

// Get all elements of 2 sets
var union = evenDigits.union(oddDigits)
union

// Get all the elements of 1st set which do not appear in 2nd
var subtract = differentDigits.subtracting(evenDigits)
subtract

//....................

var aSet: Set = [1, 2, 3, 4, 5] // is Superset for bSet
var bSet: Set = [1, 3] // is Subset fo aSet
var cSet: Set = [5, 2, 4, 9]

var copyOfBSet = bSet
bSet == copyOfBSet

bSet.isSubset(of: aSet)
aSet.isSuperset(of: bSet)
//bSet.isSubset(of: copyOfBSet) -> Results in true

bSet.isDisjoint(with: cSet) // Tells if no mutual elements

bSet.isStrictSubset(of: aSet) // true if it's subset not equal to superset
aSet.isStrictSuperset(of: bSet)

var setOfNums: Set = [12, 9, 232, 42, 5, 1, 2]
var sortedArray = setOfNums.sorted()
sortedArray
type(of: sortedArray)
