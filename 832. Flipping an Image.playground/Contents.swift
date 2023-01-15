// 832. Flipping an Image

import UIKit

class Solution {
    
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var updatedImage = image
        var m = image.count
        let n = image[0].count - 1
        var _n = n
        for i in 0..<m {
            while _n >= 0 {
                let column = abs(n-_n)
                updatedImage[i][column] = 1 - (image[i][_n])
                _n -= 1
            }
            _n = n
        }
        return updatedImage
    }
}

let result = Solution().flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]])
