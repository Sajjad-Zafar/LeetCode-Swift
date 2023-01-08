// 58. Length of Last Word

import UIKit

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        let charactersArray = Array(s)
        var lastPointer = charactersArray.count - 1
        var length = 0
        while lastPointer >= 0 {
            if charactersArray[lastPointer] != " " {
                length += 1
            }
            if charactersArray[lastPointer] == " " && length > 0 {
                return length
            }
            lastPointer -= 1
        }
        
        return length
    }
}

let result = Solution().lengthOfLastWord("Hello World")
//   fly me   to   the moon  ")
