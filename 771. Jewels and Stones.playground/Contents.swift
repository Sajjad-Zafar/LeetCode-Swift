// 771. Jewels and Stones

import UIKit

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var counter = 0
        for item in Array(stones) {
            if jewels.contains(item) {
                counter += 1
            }
        }
        return counter
    }
}

let result = Solution().numJewelsInStones("z", "ZZ")
