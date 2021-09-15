import UIKit

var russianCurrency: String = "Ruble"

var currencyUnit: [String] = ["Ruble", "Euro"]
var oldEuroCurrency = currencyUnit[1]

enum CurrencyUnit {
    case ruble, euro
}

var oldRubleCurrency: CurrencyUnit = .ruble
var otherCurrency = CurrencyUnit.euro
otherCurrency = .ruble

var currency1 = CurrencyUnit.ruble
var currency2 = "ruble"

//enum DollarCountries {
//    case usa
//    case canada
//    case australia
//}
//
//enum AdvancedCurrencyUnit {
//    case ruble(countries: [String], shortName: String)
//    case euro(countries: [String], shortName: String)
//    case dollar(nations: DollarCountries, shortName: String)
//}
//
//var euroCurrency: AdvancedCurrencyUnit = .euro(countries: ["German", "France"], shortName: "EUR")
//var dollarCurrency: AdvancedCurrencyUnit = .dollar(nations: .usa, shortName: "USD")
//


enum AdvancedCurrencyUnit {
    enum DollarCountries {
        case usa
        case canada
        case australia
    }
    case ruble(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
    case dollar(nations: DollarCountries, shortName: String)
}

var euroCurrency: AdvancedCurrencyUnit = .euro(countries: ["German", "France"], shortName: "EUR")
var dollarCurrency: AdvancedCurrencyUnit = .dollar(nations: .usa, shortName: "USD")
var australia: AdvancedCurrencyUnit.DollarCountries = .australia

switch dollarCurrency {
case .ruble:
    print("Ruble")
case let .euro(countries, shortName):
    print("Euro. Countries \(countries). Short name - \(shortName)")
case .dollar(let nation, let shortName):
    print("Dollar \(nation). Short name - \(shortName)")
}

enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    // calculating property
    var description: String {return self.rawValue}
    func about() {
        print("This enum contains smiles list")
    }
    func descriptionValue() -> Smile {
        return self
    }
    func descriptionRawValue() -> String {
        return self.rawValue
    }
    func laughing() {
        switch self {
        case .laugh:
            print("HAHA")
        default:
            print("ass")
        }
    }
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluton = 999
}

var iAmHappy = Smile.joy
iAmHappy.rawValue
iAmHappy.description

var myPlanet = Planet.init(rawValue: 3)
var anotherPlanet = Planet.init(rawValue: 11)

var otherSmile = Smile.sorrow
otherSmile.about()
otherSmile.descriptionValue()
otherSmile.descriptionRawValue()
otherSmile.laughing()

enum ArithmeticExpression {
    // pointer to specific value
    case number(Int)
    // pointer to addition operation
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    // pointer to subtractionoperation
    indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
    
    func evaluate(_ expression: ArithmeticExpression? = nil) -> Int {
        switch expression ?? self {
        case .number(let value):
            return value
        case .addition(let left, let right):
            return self.evaluate(left) + self.evaluate(right)
        case .subtraction(let left, let right):
            return self.evaluate(left) - self.evaluate(right)
        }
    }
}

var hardExpr = ArithmeticExpression.addition(.number(20), .subtraction(.number(42), .number(50)))
hardExpr.evaluate()
