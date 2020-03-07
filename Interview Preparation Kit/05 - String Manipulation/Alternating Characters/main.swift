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
let s1 = "AAAA"
let result1 = alternatingCharacters(s: s1)
print(result1, "\n")

print("Case: 2")
print("Expected Output: 4")
let s2 = "BBBBB"
let result2 = alternatingCharacters(s: s2)
print(result2, "\n")

print("Case: 3")
print("Expected Output: 0")
let s3 = "ABABABAB"
let result3 = alternatingCharacters(s: s3)
print(result3, "\n")

print("Case: 4")
print("Expected Output: 0")
let s4 = "BABABA"
let result4 = alternatingCharacters(s: s4)
print(result4, "\n")

print("Case: 5")
print("Expected Output: 4")
let s5 = "AAABBB"
let result5 = alternatingCharacters(s: s5)
print(result5, "\n")

print("Case: 6")
print("Expected Output: 6")
let s6 = "AAABBBAABB"
let result6 = alternatingCharacters(s: s6)
print(result6, "\n")

print("Case: 7")
print("Expected Output: 4")
let s7 = "AABBAABB"
let result7 = alternatingCharacters(s: s7)
print(result7, "\n")

print("Case: 8")
print("Expected Output: 1")
let s8 = "ABABABAA"
let result8 = alternatingCharacters(s: s8)
print(result8, "\n")

print("Case: 9")
print("Expected Output: 3")
let s9 = "ABBABBAA"
let result9 = alternatingCharacters(s: s9)
print(result9, "\n")
