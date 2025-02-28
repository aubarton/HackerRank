//
//  main.swift
//  New Year Chaos
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func minimumBribes(q: [Int]) -> Void {
    
    var indexCache = [Int:Int]()
    var valueCache = [Int:Int]()
    var swapsCount = 0
    
    for i in 0..<q.count {
        if (q[i] - (i + 1)) > 2 {
            print("Too chaotic")
            return
        }
        
        indexCache[i] = q[i]
        valueCache[q[i]] = i
    }
            
    for i in 0..<q.count {
        
        let searchIndex = valueCache[i + 1]!
        if searchIndex != i {

            let diff = searchIndex - i
            swapsCount += diff
            
            var targetIndex = searchIndex
            let bufferValue = indexCache[targetIndex]!
            
            while targetIndex > i {
                indexCache[targetIndex] = indexCache[targetIndex - 1]
                let targetValue = indexCache[targetIndex]!
                valueCache[targetValue] = targetIndex
                targetIndex -= 1
            }
            
            indexCache[i] = bufferValue
            valueCache[bufferValue] = i
        }
    }
        
    print(swapsCount)
}

print("Case: 1")
print("Expected Output: 3")
let q1 = [2, 1, 5, 3, 4]
minimumBribes(q: q1)
print("")

print("Case: 2")
print("Expected Output: Too chaotic")
let q2 = [2, 5, 1, 3, 4]
minimumBribes(q: q2)
print("")

print("Case: 3")
print("Expected Output: Too chaotic")
let q3 = [5, 1, 2, 3, 7, 8, 6, 4]
minimumBribes(q: q3)
print("")

print("Case: 4")
print("Expected Output: 7")
let q4 = [1, 2, 5, 3, 7, 8, 6, 4]
minimumBribes(q: q4)
print("")

print("Case: 5")
print("Expected Output: 4")
let q5 = [1, 2, 5, 3, 4, 7, 8, 6]
minimumBribes(q: q5)
print("")
