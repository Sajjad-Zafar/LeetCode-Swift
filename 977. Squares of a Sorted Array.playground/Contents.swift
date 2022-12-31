// 977. Squares of a Sorted Array

import UIKit

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        
        var result: [Int] = []
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let firstElement = abs(nums[left])
            let lastElement = abs(nums[right])
            
            if square(value: firstElement) > square(value: lastElement) {
                result.insert(nums[left] * nums[left], at: 0)
                left += 1
            } else {
                result.insert(nums[right] * nums[right], at: 0)
                right -= 1
            }
        }
        
        return result
    }
    
    private func square(value: Int) -> Int {
        return value * value
    }
}

let solution = Solution().sortedSquares([-7,-3,2,3,11])
