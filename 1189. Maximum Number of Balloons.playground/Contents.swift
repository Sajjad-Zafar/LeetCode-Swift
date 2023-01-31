// 1189. Maximum Number of Balloons

import UIKit

class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var array = Array<Int>(repeating: 0, count: 26)
        let charA: Character = Character("a")
        for char in Array(text) {
            array[Int((char.asciiValue ?? 0) - (charA.asciiValue ?? 0))] += 1
        }
        return min(array[0], array[1], array[11]/2, array[14]/2, array[13])
    }
}

let result = Solution().maxNumberOfBalloons("loonbalxballpoon")
