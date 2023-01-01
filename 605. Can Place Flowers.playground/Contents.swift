// 605. Can Place Flowers

import UIKit

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var f = [0] + flowerbed + [0]
        var _n = n
        for i in 1..<f.count-1 {
            if f[i-1] == 0 && f[i] == 0 && f[i+1] == 0 {
                f[i] = 1
                _n -= 1
            }
        }
        return _n <= 0
    }
}

let result = Solution().canPlaceFlowers([1,0,0,0,1], 1)
