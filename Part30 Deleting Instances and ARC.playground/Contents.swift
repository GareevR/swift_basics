import UIKit

class MyClass {
    var description: String
    init(description: String) {
        print("Instance \(description) created")
        self.description = description
    }
    deinit {
        print("Instance \(self.description) destroyed")
    }
}

//if true {
//    _ = MyClass(description: "TWO")
//    print("I'm under if condition")
//}

var myVar1 = MyClass(description: "ONE")
var myVar2 = myVar1
myVar1 = MyClass(description: "TWO")
myVar2 = myVar1

class Human {
    let name: String
    var child = [Human?]()
    weak var father: Human?
    weak var mother: Human?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(self.name) - destroyed")
    }
}
var kirill: Human? = Human(name: "Kirill")
var olga: Human? = Human(name: "Olga")
var alex: Human? = Human(name: "Alex")
kirill?.father = alex
kirill?.mother = olga
alex?.child.append(kirill)
olga?.child.append(kirill)
kirill = nil
alex = nil
olga = nil

class NewHuman {
    var name = "Human"
    deinit {
        print("Object destroyed")
    }
}
var closure : (() -> ())?
if true {
    var human = NewHuman()
    closure = {
        [unowned human] in
        print(human.name)
    }
    closure!()
}
print("program finished")
