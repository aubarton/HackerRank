//
//  main.swift
//  Jumping on the Clouds
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    
    var jumpCounter = 0
    var currentIndex = 0
    let endIndex = c.count - 1
    
    while currentIndex != endIndex {
        
        let futureIndex2 = currentIndex + 2
        let futureIndex1 = currentIndex + 1
        
        if futureIndex2 <= endIndex  {
            if c[futureIndex2] == 0 {
                currentIndex = futureIndex2
            } else {
                currentIndex = futureIndex1
            }
        } else {
            currentIndex = futureIndex1
        }
        
        jumpCounter += 1
    }
    
    return jumpCounter
}

// Expected Output: 4
let result1 = jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0])
print(result1)

// Expected Output: 3
let result1 = jumpingOnClouds(c: [0, 0, 0, 1, 0, 0])
print(result1)
