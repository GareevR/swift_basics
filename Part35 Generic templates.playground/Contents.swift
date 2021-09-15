import UIKit

func swapTwoInts(a: inout Int, b: inout Int)
{
    let tempA = a
    a = b
    b = tempA
}
var firstInt = 4010
var secondInt = 13
swapTwoInts(a: &firstInt, b: &secondInt)
firstInt
secondInt

func swapTwoValues<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}
var firstString = "one"
var secondString = "two"
swapTwoValues(a: &firstString, b: &secondString)
firstString
secondString

struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}



var stackOfString = Stack<String>()
stackOfString.push("uno")
stackOfString.push("dos")
let fromTheTop = stackOfString.pop()
var stackOfInt = Stack(1, 2, 4, 5)
type(of: stackOfInt)
var stackOfStrings = Stack<String>()

func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

var myArray = [3.14, 0.1, 0.25]
findIndex(array: myArray, valueToFind: 2)
findIndex(array: myArray, valueToFind: 0.1)

//.............Generic extension..............

extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

stackOfInt.topItem
stackOfInt.push(7)
stackOfInt.topItem

protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Stack<T>: Container {
    typealias ItemType = T
    var items = [T]()
    var count: Int {
        return items.count
    }
    
    init() {}
    init(_ elements: T...) {
        self.items = elements
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(item: T) {
        items.append(item)
    }
    
}
