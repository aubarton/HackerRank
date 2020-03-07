//
//  main.swift
//  Counting Valleys
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func countingValleys(n: Int, s: String) -> Int {
    
    var numberOfValleys = 0
    var didEnterToValley: Bool = false
    
    var level = 0 {
        willSet {
            if newValue < 0, didEnterToValley == false {
                didEnterToValley = true
            } else if newValue >= 0, didEnterToValley == true {
                didEnterToValley = false
                numberOfValleys += 1
            }
        }
    }
    
    for char in s {
        if char == "U" {
            level += 1
        } else if char == "D" {
            level -= 1
        }
    }

    return numberOfValleys
}

print("Case: 1")
print("Expected Output: 1")
let n1 = 8
let s1 = "UDDDUDUU"
let result1 = countingValleys(n: n1, s: s1)
print(result1, "\n")

// Expected Output: 2
print("Case: 2")
print("Expected Output: 2")
let n2 = 2
let s2 = "DDUUDDUDUUUD"
let result2 = countingValleys(n: n2, s: s2)
print(result2, "\n")
