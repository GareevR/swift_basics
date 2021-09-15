import UIKit

class AboutMan {
    var firstName = "Name"
    var secondName = "Second name"
//    lazy var wholeName: String = self.generateWholeName()
//    lazy var wholeName: () -> String = { "\(self.firstName) \(self.secondName)" }
    var wholeName: String { return "\(self.firstName) \(self.secondName)"} // !!!
    
    init(name: String, secondName: String) {
        (self.firstName, self.secondName) = (name, secondName)
    }
    func generateWholeName() -> String {
        return self.firstName + " " + self.secondName
    }
}
var me = AboutMan(name: "Rinat", secondName: "Gareev")
me.wholeName
me.firstName = "John"
me.secondName = "Jonas"
me.wholeName


//get {
//    return self.radius * 2 * 3.14
//}
//set(newPerimeter) {
//    self.radius = newPerimeter / (2 * 3.14)
//}

struct Circle {
    var coordinates: (x: Int, y: Int)
    var radius: Float {
        willSet {
            print("Value of radius \(self.radius) will be set to \(newValue)")
        }
        didSet {
            print("Value of radius \(oldValue) has been set to \(self.radius)")
        }
    }
    var perimeter: Float {
        get {
            return self.radius * 2 * 3.14
        }
        set {
            self.radius = newValue / (2 * 3.14)
        }
    }
}
var myNewCircle = Circle(coordinates: (0, 0), radius: 10)
myNewCircle.radius
myNewCircle.perimeter

myNewCircle.perimeter = 31.4
myNewCircle.radius

struct SomeStructure {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 2
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 3
    }
    class var overrideableComputedProperty: Int {
        return 4
    }
}

struct AudioChannel {
    static var maxVolume = 5
    var volume: Int {
        didSet {
            if volume > AudioChannel.maxVolume {
                volume = AudioChannel.maxVolume
            }
        }
    }
}

var leftChannel = AudioChannel(volume: 2)
var rightChannel = AudioChannel(volume: 3)
rightChannel.volume = 10
rightChannel.volume
AudioChannel.maxVolume
AudioChannel.maxVolume = 10
rightChannel.volume = 9
rightChannel.volume
