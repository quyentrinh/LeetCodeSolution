/*

 In a binary tree, the root node is at depth 0, and children of each depth k node are at depth k+1.

 Two nodes of a binary tree are cousins if they have the same depth, but have different parents.

 We are given the root of a binary tree with unique values, and the values x and y of two different nodes in the tree.

 Return true if and only if the nodes corresponding to the values x and y are cousins.

  

 Example 1:


 Input: root = [1,2,3,4], x = 4, y = 3
 Output: false
 Example 2:


 Input: root = [1,2,3,null,4,null,5], x = 5, y = 4
 Output: true
 Example 3:



 Input: root = [1,2,3,null,4], x = 2, y = 3
 Output: false
  

 Constraints:

 The number of nodes in the tree will be between 2 and 100.
 Each node has a unique integer value from 1 to 100.
 
 
*/


import Foundation

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
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        guard let parentX = findParent(root, x, 0), let parentY = findParent(root, y, 0) else {
            return false
        }
        return (parentX.depth == parentY.depth && parentX.value != parentY.value)
    }
    
    func findParent(_ root: TreeNode?, _ x: Int, _ depth: Int) -> (value: Int, depth: Int)? {
        
        guard let root = root else {
            return nil
        }
//        print(root.val)
        if root.left?.val == x || root.right?.val == x {
            return (root.val, depth)
        }
        if let left = findParent(root.left, x, depth + 1) {
            return left
        }
        return findParent(root.right, x, depth + 1)
        
    }
    
}

let node6 = TreeNode(6, TreeNode(4), TreeNode(7))

let node13 = TreeNode(13, TreeNode(2), TreeNode(14))

let node9 = TreeNode(9, node6, node13)

let node5 = TreeNode(5, nil, TreeNode(26))

let node15 = TreeNode(15, TreeNode(11), TreeNode(44))

let node12 = TreeNode(12, node5, node15)


let root = TreeNode(10, node9, node12)


let solution = Solution()
solution.isCousins(root, 4, 5)
