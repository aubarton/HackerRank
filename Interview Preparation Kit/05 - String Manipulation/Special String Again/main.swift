//
//  main.swift
//  Special String Again
//
//  Created by Alexey Barton on 07.03.2020.
//  Copyright © 2020 Alexey Barton. All rights reserved.
//

import Foundation

func substrCount(n: Int, s: String) -> Int {
    
    var retVal = s.count
    
    for i in 0 ..< s.count {
        let index = s.index(s.startIndex, offsetBy: i)
        let startChar = String(s[index])
        var diffCharIdx = -1
        
        for j in i + 1 ..< s.count {
            let index = s.index(s.startIndex, offsetBy: j)
            let currChar = String(s[index])
            if startChar == currChar {
                if (diffCharIdx == -1 || (j - diffCharIdx) == (diffCharIdx - i)) {
                    retVal += 1
                }
            } else {
                if (diffCharIdx == -1) {
                    diffCharIdx = j
                } else {
                    break
                }
            }
        }
    }
    
    return retVal;
}

//func substrCount(n: Int, s: String) -> Int {
//
//    var result = 0
//    var arrayOfSubstring = [String]()
//
//    for i in 0 ..< n {
//        for j in i + 1 ... n {
//
//            let startIndex = s.index(s.startIndex, offsetBy: i)
//            let endIndex = s.index(s.startIndex, offsetBy: j)
//            let substring = s[startIndex..<endIndex]
//            arrayOfSubstring.append(String(substring))
//            //print(substring)
//        }
//    }
//
//    for i in 0 ..< arrayOfSubstring.count {
//        if checkIfSpecial(s: arrayOfSubstring[i]) {
//            result += 1
//        }
//    }
//
//    return result
//}
//
//func checkIfSpecial(s: String) -> Bool {
//    if s.count % 2 == 0 {
//        if numberOfUniqueCharacter(s: s) == 1 {
//            return true
//        }
//    } else if s.count % 2 == 1 {
//        if s.count == 1 {
//            return true
//        } else {
//            var tempString = s
//            tempString.remove(at: s.index(s.startIndex, offsetBy: (s.count - 1)/2))
//
//            if numberOfUniqueCharacter(s: tempString) == 1 {
//                return true
//            }
//        }
//    }
//
//    return false
//}
//
//func numberOfUniqueCharacter(s: String) -> Int {
//    var setOfChars = Set<String>()
//
//    for char in s  {
//        setOfChars.insert(String(char))
//    }
//
//    return setOfChars.count
//}

//print("Case 4")
//print("Expected Output: 1272919")
//let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
//let testsBundleURL = URL(fileURLWithPath: "Tests.bundle", relativeTo: currentDirectoryURL)
//let testsBundle = Bundle(url: testsBundleURL)
//let testFileURL = testsBundle!.url(forResource: "test", withExtension: "txt")!
//let testFileContent = try! String(contentsOf: testFileURL)
//let result4 = substrCount(n: testFileContent.count, s: testFileContent)
//print(result4, "\n")

//let n1 = 727310
//let s1 = "asasd"
//let result1 = substrCount(n: n1, s: s1)
//print(result1, "\n")

print("Case 1")
print("Expected Output: 7")
let n1 = 5
let s1 = "asasd"
let result1 = substrCount(n: n1, s: s1)
print(result1, "\n")

//print("Case 2")
//print("Expected Output: 10")
//let n2 = 7
//let s2 = "abcbaba"
//let result2 = substrCount(n: n2, s: s2)
//print(result2, "\n")
//
//print("Case 3")
//print("Expected Output: 10")
//let n3 = 4
//let s3 = "aaaa"
//let result3 = substrCount(n: n3, s: s3)
//print(result3, "\n")

//static long substrCount(string s)
//{
//    long retVal = s.Length;
//
//    for (int i = 0; i < s.Length; i++)
//    {
//        var startChar = s[i];
//        int diffCharIdx = -1;
//        for (int j = i + 1; j < s.Length; j++)
//        {
//            var currChar = s[j];
//            if (startChar == currChar)
//            {
//                if ((diffCharIdx == -1) ||
//                   (j - diffCharIdx) == (diffCharIdx - i))
//                    retVal++;
//            }
//            else
//            {
//                if (diffCharIdx == -1)
//                    diffCharIdx = j;
//                else
//                    break;
//            }
//        }
//    }
//    return retVal;
//}
