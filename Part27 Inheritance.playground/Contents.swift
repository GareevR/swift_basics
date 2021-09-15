import UIKit

class SuperClass {
    // Class body
}

class SubClass: SuperClass {
    // Subclass body
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

var dog = Dog()
dog.type = "dog"
//dog.walk()
//dog.bark()

dog.name = "Sparky"
dog.printName()

class NoisyDog: Dog {
//    override func bark() {
//        print("WOOF!!!")
//        print("WOOF!!!")
//        print("WOOF!!!")
//    }
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}
var badDog = NoisyDog()
//badDog.bark()

// Inheritance allows adding subclasses to superclass arrays
var animalsArray: [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog()
var sadDog = NoisyDog()
animalsArray.append(someAnimal)
animalsArray.append(myDog)
animalsArray.append(sadDog)

for item in animalsArray {
    if let animal = item as? NoisyDog {
        animal.bark()
    } else if let animal = item as? Dog {
        animal.bark()
    } else {
        item.walk()
    }
}
