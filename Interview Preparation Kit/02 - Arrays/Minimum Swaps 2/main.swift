//
//  main.swift
//  Minimum Swaps 2
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func minimumSwaps(arr: [Int]) -> Int {

    var indexCache = [Int: Int]()
    var valueCache = [Int: Int]()
    var swapCounter = 0
    
    for i in 0..<arr.count {
        indexCache[i] = arr[i]
        valueCache[arr[i]] = i
    }
    
    for i in 0..<arr.count {

        let searchIndex = valueCache[i + 1]!
        if searchIndex != i {

            let currentValue = indexCache[i]!
            indexCache[searchIndex] = indexCache[i]
            indexCache[i] = i + 1
            
            valueCache[currentValue] = searchIndex
            valueCache[i + 1] = i
            
            swapCounter += 1
        }
    }
    
    return swapCounter
}

print("Case: 1")
print("Expected Output: 3")
let arr1 = [4, 3, 1, 2]
let result1 = minimumSwaps(arr: arr1)
print(result1, "\n")

print("Case: 2")
print("Expected Output: 3")
let arr2 = [2, 3, 4, 1, 5]
let result2 = minimumSwaps(arr: arr2)
print(result2, "\n")

print("Case: 3")
print("Expected Output: 3")
let arr3 = [1, 3, 5, 2, 4, 6, 7]
let result3 = minimumSwaps(arr: arr3)
print(result3, "\n")
