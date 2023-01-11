// 746. Min Cost Climbing Stairs

import UIKit

class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var cost = cost
        cost.append(0)
        for i in stride(from: cost.count-3 , to: -1, by: -1) {
            cost[i] = min(cost[i]+cost[i+1], cost[i]+cost[i+2])
        }
        return min(cost[0], cost[1])
    }
}

let result = Solution().minCostClimbingStairs([1,100,1,1,1,100,1,1,100,1])
