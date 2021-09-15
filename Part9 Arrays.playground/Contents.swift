import UIKit

let alphabetArray = ["a", "b", "c"]
alphabetArray[1]

var mutableArray = [2, 4, 5]
mutableArray[2] = 10
mutableArray[2]

let newAlphabetArray = Array(arrayLiteral: "a", "b", "c")
newAlphabetArray

let lineArray = Array(0...10)
lineArray

let repeatArray = Array(repeating: "ab", count: 5)
repeatArray

var stringsArray = ["one", "two", "three", "four"]
stringsArray[2...3] = ["five"]
stringsArray

var firstAr = Array(arrayLiteral: "a", "b", "c")
type(of: firstAr)

var secondAr = Array(1..<5)
type(of: secondAr)

var arrayOne: Array<Character> = ["a", "b"]
var arrayTwo: [Int] = [1, 4, 5, 6]

// Arrays are value types (not reference)

var parentArray = ["one", "two", "three"]
var copyArray = parentArray
copyArray[1] = "fuck"

copyArray
parentArray

var emptyArray: [String] = []
var anotherEmptyArray = [String]()
var newEmptyArray = Array<String>()
//.........................

let a1 = 1
let a2 = 2
let a3 = 4
var someArray = [1, 2, 4]

someArray == [a1, a2, a3]
someArray == [1, 2, 4]

let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]

// Array combining
var alphabet = charsOne + charsTwo
alphabet
alphabet += charsThree
alphabet

//Multi-dimensional arrays

var arrayOfArrays = [[1, 2, 3], [2, 6, 10], [3, 6, 9]] // -> [[Int]]
arrayOfArrays[0]
arrayOfArrays[1][2]
arrayOfArrays[2][2]

//....................

var newArray = [1, 2, 3, 4, 5]
newArray.isEmpty
newArray.count

var someNewArray = [Int]() // also could be written as someNewArray: [Int] = []
someNewArray.count
someNewArray.isEmpty

var numArray = [5, 6, 7, 8, 9]
var sliceOfArray = numArray[numArray.count-3...numArray.count-1]

let subArray = numArray.suffix(3)
subArray.first
subArray.last

// Add to an end
numArray.append((10))

// Insert at "in" position
numArray.insert(100, at: 4)
numArray

numArray.remove(at: 4) // also returns deleted value
numArray.removeLast()  // also returns deleted value
numArray.removeFirst() // also returns deleted value
numArray

numArray.dropLast() // removes from copied array and returns it
var anotherNumArray = numArray.dropFirst()
numArray

numArray.contains(10) // -> false
numArray.contains(7) // -> true
numArray.max() // -> for comparable values only
numArray.min()

var someStringArray = ["fuck", "you", "kek"]
someStringArray.reverse() // -> reversed for copy
someStringArray

var unsortedArray = [10, 1, 2, 4, 3, 5, 7, 8]
var sortedArray = unsortedArray.sorted()

//...........Array slices..........
var arrayOfNumbers = Array(1...10)
type(of: arrayOfNumbers)
var slice = arrayOfNumbers[4...6]
type(of: slice)
slice[5] // indexes are same as parent arra
var arrayFromSlice = Array(slice)
type(of: arrayFromSlice)
