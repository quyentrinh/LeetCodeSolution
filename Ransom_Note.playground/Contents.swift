
/*
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

 Each letter in the magazine string can only be used once in your ransom note.

  

 Example 1:

 Input: ransomNote = "a", magazine = "b"
 Output: false
 Example 2:

 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 Example 3:

 Input: ransomNote = "aa", magazine = "aab"
 Output: true
  

 Constraints:

 You may assume that both strings contain only lowercase letters.
*/

import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var _magazine = magazine
        for c in ransomNote {
            if _magazine.contains(c) {
                _magazine.remove(at: _magazine.firstIndex(of: c)!)
                continue
            }
            return false
        }
        return true
    }
}

let solution = Solution()
solution.canConstruct("abbbb", "aabbbcdefgh")
