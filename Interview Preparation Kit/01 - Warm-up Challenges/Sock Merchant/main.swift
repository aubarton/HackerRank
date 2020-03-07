//
//  main.swift
//  Sock Merchant
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    var setOfColors: Set<Int> = []
    var dictionaryOfColors: Dictionary<Int, Int> = [:]
    
    for color in ar {
        setOfColors.insert(color)
    }
    
    for colorFromSet in setOfColors {
     
        var counter = 0
        
        for colorFromArray in ar {
            if colorFromSet == colorFromArray {
                counter += 1
            }
        }
        
        dictionaryOfColors[colorFromSet] = counter
    }
    
    var pairCounter = 0
    
    for item in dictionaryOfColors.values {
        pairCounter += item/2
    }
    
    return pairCounter
}

let n = 0
let ar = []
let result = sockMerchant(n: <#T##Int#>, ar: <#T##[Int]#>)
