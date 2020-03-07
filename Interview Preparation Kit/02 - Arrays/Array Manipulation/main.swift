//
//  main.swift
//  Array Manipulation
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    
    var resultArray = Array(repeating: 0, count: n + 1)
    
    for query in queries {
        let a = query[0] - 1
        let b = query[1]
        let k = query[2]
        
        resultArray[a] += k
        resultArray[b] -= k
    }
    
    var maxValue = 0
    var sum = 0
    for item in resultArray {
        sum += item
        maxValue = max(sum, maxValue)
    }
    
    return maxValue
}

// Expected Output: 200
print("Case: 1")
print("Expected Output: 200")
let n1 = 5
let queries1 = [
    [1, 2, 100],
    [2, 5, 100],
    [3, 4, 100],
]
let result1 = arrayManipulation(n: n1, queries: queries1)
print(result1, "\n")

// Expected Output: 10
print("Case: 2")
print("Expected Output: 10")
let n2 = 10
let queries2 = [
    [1, 5, 3],
    [4, 8, 7],
    [6, 9, 1],
]
let result2 = arrayManipulation(n: n2, queries: queries2)
print(result2, "\n")

// Expected Output: 31
print("Case: 3")
print("Expected Output: 31")
let n3 = 10
let queries3 = [
    [2, 6, 8],
    [3, 5, 7],
    [1, 8, 1],
    [5, 9, 15],
]
let result3 = arrayManipulation(n: n3, queries: queries3)
print(result3, "\n")
