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

// Expected Output: 1
let result1 = countingValleys(n: 8, s: "UDDDUDUU")
print(result1)

// Expected Output: 2
let result2 = countingValleys(n: 2, s: "DDUUDDUDUUUD")
print(result2)

