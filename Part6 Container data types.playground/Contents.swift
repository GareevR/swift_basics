import UIKit

var greeting = "Hello, playground"
let tuple = (200, "Lala", true)
tuple.1
tuple.2

let floatStatus : (Float, String, Bool) = (200.2, "In work", false)
let myProgramStatus = (200, "In Work", true)
floatStatus

var (newFloat, newStatus, newCondition) = floatStatus

var (statusCode, statusText, statusConnect) = myProgramStatus
print ("""
Answer code - \(statusCode)
Answer text - \(statusText)
Answer connection - \(statusConnect)
""")

var (myName, myAge) = ("John", 25)
print ("My name is \(myName) and i'm \(myAge)")

var (newStatusCode, _, _) = myProgramStatus

print ("""
Answer code - \(myProgramStatus.0)
Answer text - \(myProgramStatus.1)
Answer connection - \(myProgramStatus.2)
""")

let statusTuple = (anotherStatuscode: 20, anotherStatusText: "Fuck", anotherStatusConnect: false)
statusTuple.anotherStatusConnect

let anotherStatusTuple : (code: Int, text: String, connect: Bool) = (10, "Lala", true)
anotherStatusTuple.code

var myTupleOne : (size: Int, type: String) = (256, "Bytes")
var myTupleTwo = (512, "MBytes")

myTupleOne = myTupleTwo
myTupleOne
myTupleOne.size = 150
myTupleOne.type = "GBytes"

(1, "alpha") < (2, "beta") // -> true (1 < 2)
(4, "beta") < (4, "alpha") // -> true (beta < alpha)
