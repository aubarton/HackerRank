//
//  main.swift
//  Sock Merchant
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    var setOfColors: Set<Int> = []
    var dictionaryOfColors: Dictionary<Int, Int> = [:]
    
    for color in ar {
        setOfColors.insert(color)
    }
    
    for colorFromSet in setOfColors {
     
        var counter = 0
        
        for colorFromArray in ar {
            if colorFromSet == colorFromArray {
                counter += 1
            }
        }
        
        dictionaryOfColors[colorFromSet] = counter
    }
    
    var pairCounter = 0
    
    for item in dictionaryOfColors.values {
        pairCounter += item/2
    }
    
    return pairCounter
}

print("Case: 1")
print("Expected Output: 3")
let n1 = 9
let ar1 = [10, 20, 20, 10, 10, 30, 50, 10, 20]
let result1 = sockMerchant(n: n1, ar: ar1)
print(result1, "\n")

print("Case: 2")
print("Expected Output: 4")
let n2 = 10
let ar2 = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]
let result2 = sockMerchant(n: n2, ar: ar2)
print(result2, "\n")
