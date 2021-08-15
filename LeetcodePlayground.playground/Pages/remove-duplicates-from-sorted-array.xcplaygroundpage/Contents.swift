//: [Previous](@previous)

import Foundation

/// Remove Duplicates from Sorted Array
///
/// [Task](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

var nums = [0,0,1,1,1,2,2,3,3,4]

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index: Int = 0
    var uniqueNumIndex: Int = -1
    let numsCount = nums.count
    var uniqueNum: Int = -101
    
    while index < numsCount {
        if nums[index] > uniqueNum {
            uniqueNum = nums[index]
            uniqueNumIndex += 1
            nums[uniqueNumIndex] = uniqueNum
        }
        
        index += 1
    }
    
    return uniqueNumIndex + 1
}

print(removeDuplicates(&nums))
print(nums)
//: [Next](@next)
