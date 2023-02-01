// 1346. Check If N and Its Double Exist

import UIKit

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        // brute force solution
//        for i in 0..<arr.count {
//            for j in 0..<arr.count {
//                if (i != j) {
//                    if (arr[i] == 2 * arr[j]) {
//                        return true;
//                    }
//                }
//            }
//        }
        
        // hashmap solution
        var set = Set<Int>()
        for number in arr {
            if set.contains(number*2) || (number % 2 == 0 && set.contains(number / 2)) {
                return true
            }
            set.insert(number)
            print("Set is:\(set)")
        }
        return false
    }
}

let result = Solution().checkIfExist([3,1,7,11])
