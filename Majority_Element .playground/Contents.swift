/*

 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

 You may assume that the array is non-empty and the majority element always exist in the array.

 Example 1:

 Input: [3,2,3]
 Output: 3
 Example 2:

 Input: [2,2,1,1,1,2,2]
 Output: 2
 
 // BEST SOLUTION
 
 class Solution {
     func majorityElement(_ nums: [Int]) -> Int {
         var result: Int = nums[0]
         var count: Int = 1
         for i in 1..<nums.count {
             if count == 0 {
                 result = nums[i]
                 count = 1
             } else if result == nums[i] {
                 count += 1
             } else {
                 count -= 1
             }
         }
         return result
     }
 }
 
*/

import Foundation

class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        var groups: [Int: Int] = [:]
//        for num in nums {
//            groups[num] = (groups[num] ?? 0 ) + 1
//        }
//        for (key, value) in groups where value > Int(nums.count / 2){
//            return key
//        }
//        return 0
//    }
    
    func majorityElement(_ nums: [Int]) -> Int {
        var result = nums.first!
        var count = 0
        for num in nums {
            if count == 0 {
                result = num
            }
            if num == result {
                count += 1
            } else {
                count -= 1
            }
            print("result: \(result)")
            print("count: \(count)")
            print("num: \(num)")
            print("--------")
        }
        return result
    }
    
}


let solution = Solution()
solution.majorityElement([2,3,1,1,2,2,2,3,5,2,2])
