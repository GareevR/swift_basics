import Foundation

//func sumTwoInt(a: Int, b: Int) {
//    print("a + b = \(a + b)")
//}
//
//sumTwoInt(a: 12, b: 12)
//sumTwoInt(a: 145, b: 23)

//func sumTwoInt(num1 a: Int, num2 b: Int) {
//    print("a + b = \(a + b)")
//}
//
//sumTwoInt(num1: 10, num2: 32)
//sumTwoInt(num1: 83, num2: 23)

func sumTwoInt(_ a: Int, _ b: Int) -> Int{
    let result = a + b
    print("a + b = \(result)")
    return result
}

var result = sumTwoInt(12, 14)

func returnMessage(code: Int, message: String) -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

var myMessage = returnMessage(code: 200, message: "Message code")

func changeValues(_ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}

var x = 150, y = 45
changeValues(&x, &y)
x
y

print(returnMessage(code: 420, message: "2 much weed: "))

func printRequestString(codes: Int...) {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Answers recieved: \(codesString)")
}

printRequestString(codes: 120, 420, 400)

func getCodeDecription(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
        case 1...100:
            description = "Error"
        case 101...200:
            description = "Correct"
        default:
            description = "Unknown code"
    }
    return (code, description)
}

let request = getCodeDecription(code: 24)
request.code
request.description

func newReturnMessage(code: Int, message: String = "Message - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

newReturnMessage(code: 21)
newReturnMessage(code: 410, message: "Everlasting summer ")

func printText() {
    print("Function called")
}

func returnPrintTextFunction() -> () -> () {
    return printText
}
print("Step 1")
let newFunctionInLet = returnPrintTextFunction()
print("Step 2")
newFunctionInLet()
print("Step 3")

func generateWallet(walletLength: Int) -> [Int] {
    let typesOfBanknotes = [50, 100, 500, 1000, 5000]
    var wallet: [Int] = []
    
    for _ in 1...walletLength {
        let randomIndex = Int(arc4random_uniform(UInt32(typesOfBanknotes.count - 1)))
        wallet.append(typesOfBanknotes[randomIndex])
    }
    return wallet
}

func sumWallet(banknotsFunction wallet: (Int) -> [Int],
               walletLength: Int) -> Int? {
    let myWalletArray = wallet(walletLength)
    var sum: Int = 0
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}

sumWallet(banknotsFunction: generateWallet, walletLength: 1)

//.................Threaded functions................

func oneStep(coordinates: inout (Int, Int), stepType: String) {
    func up(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func right(coords: inout (Int, Int)) {
        coords = (coords.0, coords.1 + 1)
    }
    func left(coords: inout (Int, Int)) {
        coords = (coords.0, coords.1 - 1)
    }
    func down(coords: inout (Int, Int)) {
        coords = (coords.0 - 1, coords.1)
    }
    
    switch stepType {
        case "right":
            right(coords: &coordinates)
        case "left":
            left(coords: &coordinates)
        case "down":
            down(coords: &coordinates)
        case "up":
            up(coords: &coordinates)
        default:
            print("Invalid direction")
            break
    }
}

var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "right")
oneStep(coordinates: &coordinates, stepType: "right and up")
coordinates

func say(what: String) {}
func say(what: Int) {}

func cry() -> String {
    return "one"
}

func cry() -> Int {
    return 1
}

// let resultOfFunc = cry() -> Won't work because of unknown type
let resultString: String = cry()
let resultInt = cry() + 100

// Recursion

func countdown(firstNum num: Int)
{
    print(num)
    if num > 0 {
        countdown(firstNum: num - 1)
    }
}
countdown(firstNum: 30)
