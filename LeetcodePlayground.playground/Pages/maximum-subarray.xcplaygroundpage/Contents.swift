//: [Previous](@previous)

import Foundation

/// Maximum Subarray
///
/// [Task](https://leetcode.com/problems/maximum-subarray/)

let nums = [-2,1,-3,4,-1,2,1,-5,4]

func maxSubArray(_ nums: [Int]) -> Int {
    var currentSum = nums[0]
    var maxSum = nums[0]
    
    for num in nums.dropFirst() {
        currentSum = max(currentSum + num, num)
        maxSum = max(currentSum, maxSum)
    }
    
    return maxSum
}

print(maxSubArray(nums))
//: [Next](@next)
