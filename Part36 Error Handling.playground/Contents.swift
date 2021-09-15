import UIKit

enum VendingMachineError: Error {
    case invalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.InsufficientFunds(coinsNeeded: 10)

//func anotherFunc() throws {
//    var value = try someFunc()
//}
//func someFunc() throws -> String {
//    try anotherFunc()
//}
//try someFunc()

struct Item {
    var price: Int
    var count: Int
}
class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)]
    var coinsDeposited = 0
    
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    func vend(itemNamed name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        item.count -= 1
        inventory[name] = item
        dispenseSnack(snack: name)
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorize",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 21
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("Invalid selection")
} catch VendingMachineError.outOfStock {
    print("Out of stock")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please deposit \(coinsNeeded) more coin(s)")
}

func someThrowingFunction(value: Int) throws -> Int {
    guard value == 10 else {
        throw VendingMachineError.invalidSelection
    }
    return value
}
let x = try? someThrowingFunction(value: 20)

//let photo = try! loadImage("./Resources/John Appleseed.jpg")

func processFile(filename: String) throws {
    if filename == "exists" {
        print("File \(filename) opened")
        defer { // allows to process code after finishing the function
            print("File \(filename) closed")
        }
        for _ in 0...1  {
            try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
        }
    }
}
try? processFile(filename: "exists")
