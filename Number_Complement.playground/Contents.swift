import Foundation

/*

 Given a positive integer num, output its complement number. The complement strategy is to flip the bits of its binary representation.

  

 Example 1:

 Input: num = 5
 Output: 2
 Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
 Example 2:

 Input: num = 1
 Output: 0
 Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
  

 Constraints:

 The given integer num is guaranteed to fit within the range of a 32-bit signed integer.
 num >= 1
 You could assume no leading zero bit in the integer’s binary representation.
 This question is the same as 1009: https://leetcode.com/problems/complement-of-base-10-integer/
 
*/

class Solution {
    
    func findComplement(_ num: Int) -> Int {
        func reverse(char: Character) -> Character {
            return char == "0" ? "1" : "0"
        }
        let binary = String(num, radix: 2)
        let result = String(binary.map { reverse(char: $0) })
        
        return Int(result, radix: 2)!
    }
    
}

let solution = Solution()
solution.findComplement(5)
