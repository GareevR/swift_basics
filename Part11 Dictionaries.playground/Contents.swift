import UIKit

var dictionary = ["one": "один", "two": "два", "three": "три"]
dictionary
type(of: dictionary)

var numDictionary = Dictionary(dictionaryLiteral: (100, "100"), (200, "200"),
                                                                 (300, "300"))

let baseCollection = [(2, 5), (3, 6), (1, 4)]
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)
newDictionary

let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"]
let nearestStarDistances = [4.24, 4.37, 4.37]
let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames, nearestStarDistances))
starDistanceDict

// Ways of initialization

var codeDesc = [200: "sucess", 300: "warning", 400: "error"]
type(of: codeDesc)
var dictOne: Dictionary<Int, Bool> = [100: true, 200: false, 400: true]
var dictTwo: [String: String] = ["John": "Smith", "Eleonor": "Green"]

// Interaction with dict's elements

var countryDict = ["RUS": "Russia", "UKR": "Ukraine", "USA": "United States of America"]
var countryName = countryDict["UKR"]
countryName
countryDict["RUS"] = "Russian Federation"
countryDict

var oldValueOne = countryDict.updateValue("America", forKey: "USA")
oldValueOne
var oldValueTwo = countryDict.updateValue("Estonia", forKey: "EST")
oldValueTwo

countryDict["TUR"] = "Turkey"
countryDict
countryDict["TUR"] = nil
countryDict.removeValue(forKey: "EST")

let someDict = [1: "one", 3: "three"]
someDict[2]
type(of: someDict[2]) // Optional value type

// Empty dictionaries

var emptyDictionary: [String: Int] = [:]
var anotherEmptyDictionary = Dictionary<String, Int>()
var newEmptyDictionary = [String: Int]()

var birthYears = [1991: ["Jane", "James", "John"], 1994: ["Arsen", "Alex"]]
birthYears = [:]
birthYears

// Dictionary methods

var someDictionary = ["one": 1, "two": 2, "three": 3]
someDictionary.count

var emptyDict: [String: Int] = [:]
emptyDict.count
emptyDict.isEmpty

countryDict

var keys = countryDict.keys
type(of:keys)
keys

var values = countryDict.values
type(of: values)
values

var keysSet = Set(keys)
var valuesArray = Array(values)
