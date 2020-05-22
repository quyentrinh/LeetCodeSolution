
/*
 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

 Examples:

 s = "leetcode"
 return 0.

 s = "loveleetcode",
 return 2.
 Note: You may assume the string contain only lowercase letters.
 */

import Foundation

class Solution {
    
    func firstUniqChar(_ s: String) -> Int {
        for (index, char) in s.enumerated() {
            let lastIndex = s.distance(from: s.startIndex, to: s.lastIndex(of: char)!)
            print("\(index) -- \(lastIndex)")
            if index == lastIndex {
                return lastIndex
            }
        }
        return -1
    }
    
}

let solution = Solution()
solution.firstUniqChar("cc")
