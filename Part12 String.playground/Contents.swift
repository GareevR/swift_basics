import UIKit

var str = "Hello!"
str.count

var char: Character = "\u{E9}"
char

var anotherChar: Character = "\u{65}\u{301}" // "\u{value} -> graphem cluster
anotherChar

char == anotherChar

var thumbsUp = "\u{1f44d}"
var blackSkin = "\u{1f3fd}"
//var combine = thumbsUp + blackSkin
var combine = "\u{1f44d}\u{1f3fd}"
type(of: thumbsUp)

let cafeSimple = "caf\u{E9}"
let cafeCombine = "cafe\u{301}"
cafeSimple.count
cafeCombine.count

let name = "e\u{301}lastic"

var index = name.startIndex
type(of: index)
let firstChar = name[index]
type(of: firstChar)
var indexLastChar = name.endIndex

var lastChar = name.index(before: indexLastChar)
name[lastChar]
var secondCharIndex = name.index(after: name.startIndex)
name [secondCharIndex]
var fourCharIndex = name.index(name.startIndex, offsetBy: 3)
name[fourCharIndex]
name.count
name.unicodeScalars.count

//.......................

var abc = "abcdefghijklmnopqrstuvwxyz"
var firstCharIndex = abc.startIndex
var fourthCharIndex = abc.index(firstCharIndex, offsetBy: 3)
var subAbc = abc[firstCharIndex...fourCharIndex]
subAbc
type(of: subAbc)
var subStr = abc[fourthCharIndex...]
