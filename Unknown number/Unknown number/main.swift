//
//  main.swift
//  Unknown number
//
//  Created by Macservis on 09.08.2021.
//

import Foundation

print("Computer thought of the number. Try guessing it")
var myNumber: String?
//var myNumInt = UInt8
let message = [
    "start": "Enter your version and press Enter",
    "win": "Your number equals to mine. Victory!",
    "less": "Your number is less than mine",
    "greater": "Your number is greater than mine",
    "invalid": "Invalid number"
]

let randomNumber = UInt8(arc4random_uniform(50))

var userNumber: UInt8?
repeat {
    print(message["start"]!)
    myNumber = readLine()
    userNumber = UInt8(myNumber!)
    if userNumber != nil {
        if userNumber! > randomNumber {
            print(message["greater"]!)
        }
        else if userNumber! < randomNumber {
            print(message["less"]!)
        }
    } else {
        print(message["invalid"]!)
    }
} while userNumber! != randomNumber
print(message["win"]!)

