import UIKit

struct Vector2D {
    var x = 0.0, y = 0.0
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

let vector = Vector2D(x: 3.0, y: 1.0)
let anotherVector = Vector2D(x: 2.0, y: 4.0)
let combinedVector = vector + anotherVector
combinedVector

prefix func - (vector: Vector2D) -> Vector2D { // postfix also availible
    return Vector2D(x: -vector.x, y: -vector.y)
}

let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive

func += (left: inout Vector2D, right: Vector2D) {
    left = left + right
}
var original = Vector2D(x: 1.0, y: 2.0)
let vectorToAdd = Vector2D(x: 3.0, y: 4.0)
original += vectorToAdd
original.x
original.y

func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

func != (left: Vector2D, right: Vector2D) -> Bool {
    return !(left == right)
}

let twoThree = Vector2D(x: 2.0, y: 3.0)
let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
if twoThree == anotherTwoThree {
    print("Vectors are equivalent")
}

prefix operator +++ // initialization
prefix func +++ (vector: inout Vector2D) -> Vector2D {
    vector += vector
    return vector
}

var toBeDoubled = Vector2D(x: 1.0, y: 4.0)
let afterDouble = +++toBeDoubled

postfix operator ++
postfix func ++ (vector: inout Vector2D) -> Vector2D {
    vector.x += 1
    vector.y += 1
    return vector
}

postfix func ++ (number: inout Int) -> Int {
    number += 1
    return number
}

var dx = 10
dx++
