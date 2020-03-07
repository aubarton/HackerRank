//
//  main.swift
//  Repeated String
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func repeatedString(s: String, n: Int) -> Int {
    let additional = Int(floor(Double(n)/Double(s.count)))
    var resultCounter = calculateNumberOfLetterA(string: s) * additional

    let difference = n - (additional * s.count)
    if difference > 0 {
        let startIndex = s.startIndex
        let endIndex = s.index(startIndex, offsetBy: difference)
        let range = startIndex..<endIndex
        let substring = String(s[range])
        
        resultCounter += calculateNumberOfLetterA(string: substring)
    }
    
    return resultCounter
}

func calculateNumberOfLetterA(string: String) -> Int {
    var counter = 0
    
    for char in string {
        if char == "a" {
            counter += 1
        }
    }
    
    return counter
}

// Expected Output: 7
let result1 = repeatedString(s: "aba", n: 10)
print(result1)

// Expected Output: 1000000000000
let result2 = repeatedString(s: "a", n: 1000000000000)
print(result2)
