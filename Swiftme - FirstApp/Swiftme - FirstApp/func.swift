//
//  func.swift
//  Swiftme - FirstApp
//
//  Created by Macservis on 09.08.2021.
//

import Foundation

func sum(_ a: String?, _ b: String?) -> Int {
    guard let _ = Int(a!), let _ = Int(b!) else {
        print("One or both numbers invalid. Sum is incorrect")
        return -1
    }
    return Int(a!)! + Int(b!)!
}

