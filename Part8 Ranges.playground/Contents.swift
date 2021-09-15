import UIKit

var myRange = 1..<500
let rangeInt = 1..<5

var someRangeInt: Range<Int> = 1..<10
type(of: someRangeInt)
var anotherRangeInt = 51..<59

var rangeString = "a"..<"z"
type(of: rangeString)

var rangeChar: Range<Character> = "a"..<"z"
type(of: rangeChar)

var rangeDouble = 1.0..<5.0
type(of: rangeDouble)

var firstElement = 10
var lastElement = 18
var myBestRange = firstElement..<lastElement

var myPartialRangeUpTo = ..<5
type(of: myPartialRangeUpTo)

var myClosedRange = 1...200
type(of: myClosedRange)

var myPartialRangeFrom = 1...
type(of: myPartialRangeFrom)

var myPartialRangeThrough = ...1
type(of: myPartialRangeThrough)


var intR = 1...10
intR.count

var floatR: ClosedRange<Float> = 1.0...2.0
floatR.contains(1.4)

var emptyR = 0..<0
emptyR.count
emptyR.isEmpty

var notEmptyR = 0...0
notEmptyR.count
notEmptyR.isEmpty

var anotherIntR = 20..<34
anotherIntR.upperBound
anotherIntR.lowerBound
anotherIntR.max() // for Int's only
anotherIntR.min() // for Int's only


