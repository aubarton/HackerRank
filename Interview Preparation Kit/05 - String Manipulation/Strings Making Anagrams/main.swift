//
//  main.swift
//  Strings Making Anagrams
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func makeAnagram(a: String, b: String) -> Int {
    
    var cacheA = [String:Int]()
    var cacheB = [String:Int]()
    var cacheC = [String:Int]()
    
    for char in a {
        let charString = String(char)
        let value = (cacheA[charString] ?? 0) + 1
        cacheA[charString] = value
    }
    
    for char in b {
        let charString = String(char)
        let value = (cacheB[charString] ?? 0) + 1
        cacheB[charString] = value
    }
    
    for key in cacheA.keys {
        let valueA = cacheA[key]
        let valueB = cacheB[key]
        
        if valueA != nil && valueB != nil {
            cacheC[key] = min(valueA!, valueB!)
        }
    }
    
    var anagramLength = 0
    for value in cacheC.values {
        anagramLength += value
    }
    
    return a.count - anagramLength + b.count - anagramLength
}

print("Case: 1")
print("Expected Output: 4")
let a1 = "cde"
let b1 = "abc"
let result1 = makeAnagram(a: a1, b: b1)
print(result1, "\n")

print("Case: 2")
print("Expected Output: 30")
let a2 = "fcrxzwscanmligyxyvym"
let b2 = "jxwtrhvujlmrpdoqbisbwhmgpmeoke"
let result2 = makeAnagram(a: a2, b: b2)
print(result2, "\n")

print("Case: 3")
print("Expected Output: 2")
let a3 = "showman"
let b3 = "woman"
let result3 = makeAnagram(a: a3, b: b3)
print(result3, "\n")
