// 766. Toeplitz Matrix

import UIKit


class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        let m = matrix.count
        let n = matrix[0].count
        for i in 1..<m {
            for j in 1..<n {
                if matrix[i][j] != matrix[i-1][j-1] {
                    return false
                }
            }
        }
        return true
    }
}

let result = Solution().isToeplitzMatrix([[36,86,7,94,71,59,10],[19,0,86,7,94,71,59]])
    
    //[[1,2,3,4],[5,1,2,3],[9,5,1,2]])
