import UIKit

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
    convenience init(text: String) {
        self.init()
        print(text)
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

var someDog = Dog(text: "Dog class instance created")

class Rectangle {
    var height: Int
    var width: Int
    
    init?(height h: Int, width w: Int) {
        self.height = h
        self.width = w
        if !(h > 0 && w > 0) {
            return nil
        }
    }
}

//enum TemperatureUnit {
//    case kelvin, celsius, fahrenheit
//    init?(symbol: Character) {
//        switch symbol {
//        case "K":
//            self = .kelvin
//        case "C":
//            self = .celsius
//        case "F":
//            self = .fahrenheit
//        default:
//            return nil
//        }
//    }
//}
//let fahrenheitUnit = TemperatureUnit(symbol: "F")

enum TemperatureUnit: Character {
    case kelvin = "K", celsius = "C", fahrenheit = "F"
}

let fahrenheitUnit = TemperatureUnit(rawValue: "K")
fahrenheitUnit!.hashValue

/*
 required init() {
  // Initializator body
 }
 
 "required" means every subclass to have this initializator
 */

class SuperClass {
    init?(isNill: Bool) {
        if isNill == true {
            return nil
        } else {
            print("Instance created")
        }
    }
    deinit {
        print("Deinitializator of class")
    }
}

class SubClass: SuperClass {
    deinit {
        print("Deinitializator of subclass")
    }
}

var obj = SubClass(isNill: false)
obj = nil
