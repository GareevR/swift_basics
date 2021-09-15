import UIKit

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNamed {
    var fullName: String { get }
}

struct OldPerson: FullyNamed {
    var fullName: String
}

let john = OldPerson(fullName: "John Wick")

john is FullyNamed // true

protocol RandomNumberGenerator {
    func random () -> Double
    static func getRandomString()
    mutating func changeValue(newValue: Double)
}

protocol OldNamed {
    init(name: String)
}

class Person: OldNamed {
    var name: String
    required init(name: String) {
        self.name = name
    }
}

protocol TextRepresentable {
    func asText() -> String
}

extension Int: TextRepresentable {
    func asText() -> String {
        return String(self)
    }
}
5.asText()

extension TextRepresentable {
    func description() -> String {
        return "This data type supports protocol TextRepresentable"
    }
}
5.description()

//.............Protocol inheritance...............

protocol SuperProtocol {
    var someValue: Int { get }
}
protocol SubProtocol: SuperProtocol {
    func someMethod()
}
struct SomeStruct: SubProtocol {
    let someValue: Int = 10
    func someMethod() {
        print("This is someMethod talking")
    }
}

protocol ClassSubProtocol: AnyObject /*class*/, SuperProtocol {
    func someMethod()
}

//............Protocol composition...............

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct NewPerson: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(celebrator: Named & Aged) { // Protocol1 & Protocol2
    print("Happy Birthday, \(celebrator.name). Today you're \(celebrator.age)")
}
let birthdayPerson = NewPerson(name: "John Wick", age: 46)
wishHappyBirthday(celebrator: birthdayPerson)
