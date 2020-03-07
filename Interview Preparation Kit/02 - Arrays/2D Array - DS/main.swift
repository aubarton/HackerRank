//
//  main.swift
//  2D Array - DS
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func hourglassSum(arr: [[Int]]) -> Int {
    var maxSum = Int.min
    
    for row in 0...5 {
        for column in 0...5 {
            if hasHourglass(row: row, column: column, array: arr) {
                
                let hourglass = getHourglass(row: row, column: column, array: arr)
                let sumOfHourglass = calculateHourglassSum(hourglass: hourglass)
                
                if maxSum < sumOfHourglass {
                    maxSum = sumOfHourglass
                }
            }
        }
    }
    
    return maxSum
}

func hasHourglass(row: Int, column: Int, array: [[Int]]) -> Bool {
    if row <= 3 && column <= 3 {
        return true
    }
    
    return false
}

func getHourglass(row: Int, column: Int, array: [[Int]]) -> [[Int]] {
    var hourglass = Array(repeating: Array(repeating: 0, count: 3), count: 3)
    hourglass[0][0] = array[row + 0][column + 0]
    hourglass[0][1] = array[row + 0][column + 1]
    hourglass[0][2] = array[row + 0][column + 2]
    hourglass[1][1] = array[row + 1][column + 1]
    hourglass[2][0] = array[row + 2][column + 0]
    hourglass[2][1] = array[row + 2][column + 1]
    hourglass[2][2] = array[row + 2][column + 2]
    
    return hourglass
}

func calculateHourglassSum(hourglass: [[Int]]) -> Int {
    var sum = 0
    
    for row in 0...2 {
        for column in 0...2 {
            sum += hourglass[row][column]
        }
    }
    
    return sum
}

print("Case: 1")
print("Expected Output: 19")
let arr1 = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 2, 4, 4, 0],
    [0, 0, 0, 2, 0, 0],
    [0, 0, 1, 2, 4, 0],
]
let result1 = hourglassSum(arr: arr1)
print(result1, "\n")

print("Case: 2")
print("Expected Output: 13")
let arr2 = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 9, 2, -4, -4, 0],
    [0, 0, 0, -2, 0, 0],
    [0, 0, -1, -2, -4, 0],
]
let result2 = hourglassSum(arr: arr2)
print(result2, "\n")

print("Case: 3")
print("Expected Output: 28")
let arr3 = [
    [-9, -9, -9, 1, 1, 1],
    [0, -9, 0, 4, 3, 2],
    [-9, -9, -9, 1, 2, 3],
    [0, 0, 8, 6, 6, 0],
    [0, 0, 0, -2, 0, 0],
    [0, 0, 1, 2, 4, 0],
]
let result3 = hourglassSum(arr: arr3)
print(result3, "\n")
