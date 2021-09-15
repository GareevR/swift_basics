import UIKit

var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append("Hello")
things.append((3.0, 5.0))
things.append({ (name: String) -> String in "Hello, \(name)" })
things

for thing in things {
    switch thing {
    case let someInt as Int:
        print("An integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("A positive double value of \(someDouble)")
    case let someString as String:
        print("A string value of \(someString)")
    case let (x, y) as (Double, Double):
        print("An (x, y) point at \(x), \(y)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Troll"))
    default:
        print("Something else")
    }
}

class Quadruped {
    var type = ""
    var name = ""
    func walk() {
        print("Walk")
    }
}

class Dog: Quadruped {
    override init() {
        super.init()
        self.type = "dog"
    }
    func bark() {
        print("Woof!")
    }
    func printName() {
        print(self.name)
    }
}

class NoisyDog: Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}

let someObjects: [AnyObject] = [Dog(), NoisyDog(), Dog()]
for object in someObjects as! [Dog] {
    print(object.type)
}

var dog = someObjects[1] as! Dog
type(of: dog)
dog.bark()
