//
//  3836.swift
//  
//
//  Created by a.terekhov on 09.08.2021.
//

import Foundation

/// Two Sum
///
/// [Task](https://leetcode.com/explore/featured/card/august-leetcoding-challenge-2021/613/week-1-august-1st-august-7th/3836/)

let nums = [3,3]
let target = 6

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dictionary: [Int: Int] = [:]
    var result: [Int] = []
    
    for (index, num) in nums.enumerated() {
        let rhs = target - num
        if let lhsIndex = dictionary[rhs] {
            result =  [lhsIndex, index]
        } else {
            dictionary[num] = index
        }
    }
    
    return result
}

print(twoSum(nums, target))
