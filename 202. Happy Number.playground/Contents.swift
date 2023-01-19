// 202. Happy Number

import UIKit

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var number = n
        var visit: [Int] = []
        while !visit.contains(number) {
            visit.append(number)
            number = squaresOfNumber(number: number)
            if number == 1 {
                return true
            }
        }
        return false
    }
    
    func squaresOfNumber(number: Int) -> Int {
        var num = number
        var digit :Int
        var output = 0
        while (num != 0) {
            digit = num%10
            digit = digit * digit
            output += digit
            num = num/10
        }
        return output
    }
}

let result = Solution().isHappy(2)
