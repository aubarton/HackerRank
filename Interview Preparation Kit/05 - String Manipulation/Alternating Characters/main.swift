//
//  main.swift
//  Alternating Characters
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func alternatingCharacters(s: String) -> Int {
    var tempString: String = ""
    var lastCharacter: String = ""
    
    for character in s {
        let characterString = String(character)
        
        if lastCharacter != characterString {
            lastCharacter = characterString
            tempString += lastCharacter
        }
    }
    
    return s.count - tempString.count
}

print("Case: 1")
print("Expected Output: 3")
let result1 = alternatingCharacters(s: "AAAA")
print(result1)

print("Case: 2")
print("Expected Output: 4")
let result2 = alternatingCharacters(s: "BBBBB")
print(result2)

print("Case: 3")
print("Expected Output: 0")
let result3 = alternatingCharacters(s: "ABABABAB")
print(result3)

print("Case: 4")
print("Expected Output: 0")
let result4 = alternatingCharacters(s: "BABABA")
print(result4)

print("Case: 5")
print("Expected Output: 4")
let result5 = alternatingCharacters(s: "AAABBB")
print(result5)

print("Case: 6")
print("Expected Output: 6")
let result6 = alternatingCharacters(s: "AAABBBAABB")
print(result6)

print("Case: 7")
print("Expected Output: 4")
let result7 = alternatingCharacters(s: "AABBAABB")
print(result7)

print("Case: 8")
print("Expected Output: 1")
let result8 = alternatingCharacters(s: "ABABABAA")
print(result8)

print("Case: 9")
print("Expected Output: 3")
let result9 = alternatingCharacters(s: "ABBABBAA")
print(result9)
