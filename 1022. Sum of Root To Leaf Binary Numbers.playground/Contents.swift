// 1022. Sum of Root To Leaf Binary Numbers

import UIKit

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class Solution {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        return sumRootToLeaf(root, sum: 0)
    }
    
    private func sumRootToLeaf(_ root: TreeNode?, sum: Int) -> Int {
        var _sum = sum
        guard let root = root else { return 0 }
        _sum = (_sum << 1) + root.val
        if root.left == nil && root.right == nil {
            return _sum
        }
        return sumRootToLeaf(root.left, sum: _sum) + sumRootToLeaf(root.right, sum: _sum)
    }
}

let result = Solution().sumRootToLeaf(
    TreeNode(1,
         TreeNode(0, TreeNode(0), TreeNode(1)),
         TreeNode(1, TreeNode(0), TreeNode(1))
        )
    )
