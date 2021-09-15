import Foundation

//..........Assertions...........

let strName = "Dragon"
let strYoung = "is young"
let strOld = "is old"
let strEmpty = " "

var dragonAge = 225
assert(dragonAge <= 235, strName + strEmpty + strOld) // if dragoneAge <= 235 - false, kill program
assert(dragonAge >= 225, strName + strEmpty + strYoung)
//print ("Program finished sucessfuly")

//.........if conditions...........

var logicVar = false

if logicVar {
    print("Variable logicVar is false")
} else {
    print("Variable logicVar is true")
}

var a = 1054
var b = 952
if a + b > 1000 {
    print("Sum is more than 1000")
} else {
    print("Sum is less or equals 1000")
}

var tenantCount = 7
var rentPrice = 0
if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
    rentPrice = 800
} else if (8...).contains(tenantCount) {
    rentPrice = 500
}
var allPrice = rentPrice * tenantCount

var c = 5
var d = 7
c <= d ? print("C <= D") : print("C > D")

var height = 180
var isHeader = true
let rowHeight = height + (isHeader ? 20 : 10)
rowHeight

//...........switch case..............

var userMark = 4
var message = ""
switch userMark {
    case 1..<3:
        message = "Exam failed"
    case 3:
        message = "Need to complete extra task"
    case 4...5:
        message = "Exam passed"
    default:
        message = "Invalid mark value"
}
print(message)

var answer: (code: Int, message: String) = (code: 254, message: "Page fucked up")

switch answer {
    case (100..<400, _):
        print(answer.message)
    case (400..<500, _):
        assert(false, answer.message)
    default:
        print("Incorrect answer code")
}

var dragonCharacteristics: (color: String, weight: Float) = ("red", 12.0)

var dragonsCount = 3
switch dragonCharacteristics {
    case ("green", 0..<2):
        print("1st gate")
    case ("red", 0..<2):
        print("2nd gate")
    case (let color, let weight) where
            (color == "green" || color == "red")
            && weight > 2
            && dragonsCount < 5
            && weight.truncatingRemainder(dividingBy: 1) == 0:
                print("3rd gate. Dragon's weight: \(weight)")
    default:
        print("Invalid dragon")
}

var someInt = 12
switch someInt {
    case 1...:
        print("More than 0")
    case ..<0:
        print("Less than 0")
    default:
        break
}

var level: Character = "B"

switch level {
    case "A":
        print("Turn of all electronics")
        fallthrough
    case "B":
        print("Close the doors and windows")
        fallthrough // Progress to next case manually (without exiting the switch)
    case "C":
        print("Stay calm")
    default:
        break
}

var i = 1
while i < 10 {
    print("i is \(i)")
    i += 1
}

var y = 1
var result = 0
repeat {
    result += y
    y += 1
} while y <= 10
result

y = 0
var sum = 0
while y <= 10 {
    y += 1
    if (y % 2 == 1) {
        continue
    }
    sum += y
}
sum

var lastNum = 54
var currentNum = 0
var sumOfInts = 0
while currentNum < lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("No place availalbe. Last num \(currentNum)")
        break
    }
    currentNum += 1
}

let numArray: Array<Int> = [1, 2, 3, 4, 5]
var resultSum: Int = 0
for number in numArray {
    resultSum += number
}
resultSum

for number in 1...5 {
    print(number)
}

var myChar = "a"
var myString = "Swift"
for myChar in myString {
    let myString = "Char is"
    print("\(myString) \(myChar)")
}

for _ in 1...3 {
    print("Fuck")
}

var countriesAndBlocks = ["Russia": "SNG", "France": "ES"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) joined \(orgName)")
}

for (_, orgName) in countriesAndBlocks {
    print("Organisation: \(orgName)")
}

for countryName in countriesAndBlocks.keys {
    print("Country: \(countryName)")
}

var musicStyles = ["Rock", "House", "Jazz"]
for (index, musStyle) in musicStyles.enumerated() {
    print ("\(index + 1). \(musStyle)")
}

var newResult = 0
for i in stride(from: 1, through: 10, by: 3) {
    newResult += i
}
newResult // (1 + 4 + 7 + 10) ^ through
newResult = 0
for i in stride(from: 1, to: 10, by: 3) {
    newResult += i
}
newResult // (1 + 4 + 7) ^ to

result = 0
for i in 1...10 where i % 2 == 0 {
    result += i
}
result

var resultsOfGames = ["Red Wings":["2:1","2:3"], "Capitals":["3:6","5:5"],"Penguins":["3:3","1:2"]]
for (teamName, results) in resultsOfGames {
    for teamResult in results {
        print("\(teamName) played \(teamResult)")
    }
}
for i in 1... {
    let randNum = Int(arc4random_uniform(10))
    if randNum == 5 {
        print("Iteration \(i)")
        break
    }
}

mainLoop: for i in 1...5 {
    for y in 1...5 {
        if y == 4 && i == 2 {
            break mainLoop // works for 'continue' as well
        }
        print("\(i) - \(y)")
    }
}
