//
//  remove-duplicates-from-sorted-array.swift
//  
//
//  Created by a.terekhov on 09.08.2021.
//

import Foundation

/// Remove Duplicates from Sorted Array
///
/// [Task](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index: Int = 0
        var numsCount = nums.count
        var uniqueNum: Int = -101

        while index < numsCount {
            if nums[index] > uniqueNum {
                uniqueNum = nums[index]
                index += 1
            } else {
                nums.remove(at: index)
                numsCount = nums.count
            }
        }

        return nums.count
    }
