//
//  3823.swift
//  
//
//  Created by a.terekhov on 09.08.2021.
//

import Foundation

/// Partition Array into Disjoint Intervals
///
/// [Task](https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3823/)

let nums = [6,0,8,30,37,6,75,98,39,90,63,74,52,92,64]

func partitionDisjoint(_ nums: [Int]) -> Int {
    var leftMax: Int = nums.first!
    var maxCandidate: Int = nums.first!
    var result: Int = 1

    for (index, num) in nums.enumerated() {
        if num < leftMax && index != nums.count - 1 {
            result = index + 1
            leftMax = max(maxCandidate, leftMax)
        } else {
            maxCandidate = max(maxCandidate, num)
        }
    }
    
    return result
}
    
print(partitionDisjoint(nums))
