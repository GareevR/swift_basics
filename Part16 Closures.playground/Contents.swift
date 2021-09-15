import UIKit

let functionInLet = { return true }
functionInLet()

var wallet = [10, 50, 100, 100, 5000, 100, 50, 50, 500, 100]

func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote == 100 {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

handle100(wallet: wallet)

func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote >= 1000 {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

handleMore1000(wallet: wallet)

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if closure(banknote) {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

func compare100(banknote: Int) -> Bool {
    return banknote == 100
}

func compareMore1000(banknote: Int) -> Bool {
    return banknote >= 1000
}

let resultWalletOne = handle(wallet: wallet, closure: compare100)
let resultWalletTwo = handle(wallet: wallet, closure: compareMore1000(banknote:))

handle(wallet: wallet, closure: {(banknote: Int) -> Bool in
    return banknote == 100
})

handle(wallet: wallet, closure: {banknote in
    return banknote >= 1000
})

handle(wallet: wallet, closure: {banknote in banknote >= 1000})

handle(wallet: wallet, closure: {$0 >= 1000})

handle(wallet: wallet) {$0 >= 1000}

handle(wallet: wallet) {
banknote in
    for number in Array(arrayLiteral: 100, 500) {
        if number == banknote {
            return true
        }
    }
    return false
}

var successBanknotes = handle(wallet: wallet) // last argument exchanged to ->
{ Array(arrayLiteral: 100, 500).contains($0) }

var closure: () -> () = {
    print("Closure expression")
}
closure()

var closurePrint: (String) -> () = { text in
    print("Recieved string is \(text)")
}
closurePrint("FUCK")

var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
    return $0 + $1
}

var array = [49, 18, 23, 41, 22, 9, 1]
var sortedArray = array.sorted(by: {(first: Int, second: Int) -> Bool in
    return first < second
})
sortedArray

var newSortedArray = array.sorted(by: {$0 < $1})
newSortedArray

var a = 1
var b = 2
let closureSum: () -> Int = {
    [a, b] in // this string catches the values of a and b on moment of initialization
    return a + b
}
closureSum()
a = 3
b = 4
closureSum()

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}

var incrementByTen = makeIncrement(forIncrement: 10)
var incrementBySeven = makeIncrement(forIncrement: 7)
incrementByTen()
incrementByTen()
incrementByTen()
incrementBySeven()
incrementBySeven()
incrementBySeven()

var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive
incrementByFive()
copyIncrementByFive()
incrementByFive()

//................Auto Closures...................

var arrayOfNames = ["Helga", "Bazil", "Alex"]
//func printName(nextName: String) {
//    print(nextName)
//}
//printName(nextName: arrayOfNames.remove(at: 0))

//func printName(nextName: () -> String) {
//    print(nextName())
//}
//printName(nextName: {arrayOfNames.remove(at: 0)})

func printName(nextName: @autoclosure () -> String) {
    print(nextName())
}
printName(nextName: arrayOfNames.remove(at: 0))

var arrayOfClosures: [() -> Int] = []
func addNewClosureInArray(_ newClosure: @escaping () -> Int) {
    arrayOfClosures.append(newClosure)
}
addNewClosureInArray({return 100})
addNewClosureInArray({return 1000})
arrayOfClosures[0]()
arrayOfClosures[1]()

func sum(x: Int, y: Int) -> Int {
    return x + y
}
sum(x: 1, y: 4)

func sumTwo(_ x: Int) -> (Int) -> Int {
    return { return $0 + x }
}
var anotherClosure = sumTwo(1)
anotherClosure(12)
sumTwo(10)(15)
 
var sumClosure = sumTwo(15)
sumClosure(11)
sumClosure(9)
