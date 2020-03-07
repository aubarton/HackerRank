//
//  main.swift
//  Arrays Left Rotation
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func rotLeft(a: [Int], d: Int) -> [Int] {

    var resultArray = a
    var indexCache = [Int:Int]()
    
    for i in 0..<a.count {
        indexCache[i] = a[i]
    }
    
    var searchIndex = d >= a.count ? d % a.count : d
    
    if searchIndex > 0 {
        for i in 0..<a.count {
            resultArray[i] = indexCache[searchIndex]!
            searchIndex += 1
            if searchIndex >= a.count {
                searchIndex = 0
            }
        }
    }

    return resultArray
}

print("Case: 1")
print("Expected Output: 5 1 2 3 4")
let a1 = [1, 2, 3, 4, 5]
let d1 = 4
let result1 = rotLeft(a: a1, d: d1)
print(result1, "\n")

print("Case: 2")
print("Expected Output: 77 97 58 1 86 58 26 10 86 51 41 73 89 7 10 1 59 58 84 77")
let a2 = [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51]
let d2 = 10
let result2 = rotLeft(a: a2, d: d2)
print(result2, "\n")

// Expected Output: 87 97 33 47 70 37 8 53 13 93 71 72 51 100 60
print("Case: 3")
print("Expected Output: 87 97 33 47 70 37 8 53 13 93 71 72 51 100 60")
let a3 = [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97]
let d3 = 13
let result3 = rotLeft(a: a3, d: d3)
print(result3, "\n")
