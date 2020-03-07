//
//  main.swift
//  Sherlock and the Valid String
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func isValid(s: String) -> String {

    let resultNo = "NO"
    let resultYes = "YES"
    
    var frequencyCache = [String:Int]()
    var pairCache = [Int:Int]()
    
    for char in s {
        let charString = String(char)
        let value = (frequencyCache[charString] ?? 0) + 1
        frequencyCache[charString] = value
    }
    
    for frequencyValue in frequencyCache.values {
        let value = (pairCache[frequencyValue] ?? 0) + 1
        pairCache[frequencyValue] = value
    }
    
    if pairCache.keys.count == 1 {
        return resultYes
    } else if pairCache.keys.count == 2 {
        
        let sortedKeys = pairCache.keys.sorted()
        
        let value0 = pairCache[sortedKeys[0]]
        let value1 = pairCache[sortedKeys[1]]
            
        if value0 == 1 {
            if sortedKeys[0] - 1 == 0 || sortedKeys[0] - 1 == sortedKeys[1] {
                return resultYes
            }
        }
            
        if value1 == 1 {
            if sortedKeys[1] - 1 == 0 || sortedKeys[1] - 1 == sortedKeys[0] {
                return resultYes
            }
        }
        
    }
        
    return resultNo
}

print("Case: 1")
print("Expected Output: NO")
let s1 = "aabbcd"
let result1 = isValid(s: s1)
print(result1)

print("Case: 2")
print("Expected Output: NO")
let s2 = "aabbccddeefghi"
let result2 = isValid(s: s2)
print(result2)

print("Case: 3")
print("Expected Output: YES")
let s3 = "abcdefghhgfedecba"
let result3 = isValid(s: s3)
print(result3)
