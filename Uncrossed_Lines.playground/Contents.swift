/*
 We write the integers of A and B (in the order they are given) on two separate horizontal lines.

 Now, we may draw connecting lines: a straight line connecting two numbers A[i] and B[j] such that:

 A[i] == B[j];
 The line we draw does not intersect any other connecting (non-horizontal) line.
 Note that a connecting lines cannot intersect even at the endpoints: each number can only belong to one connecting line.

 Return the maximum number of connecting lines we can draw in this way.
 */

import Foundation

class Solution {
    func maxUncrossedLines(_ A: [Int], _ B: [Int]) -> Int {
        return findLine(A, B, offsetA: 0, offsetB: 0, numberOfLine: 0)
    }
    
    func findLine(_ A: [Int], _ B: [Int], offsetA: Int, offsetB: Int, numberOfLine: Int) -> Int {
        if offsetA == A.count || offsetB == B.count {
            return numberOfLine
        }
        var indexA: Int? = nil
        for i in offsetA..<A.count {
            if let first = B.firstIndex(of: A[i]) {
                indexA = first
                break
            }
        }
        
        var indexB: Int? = nil
        for i in offsetB..<B.count {
            if let first = A.firstIndex(of: B[i]) {
                indexB = first
                break
            }
        }
        
        if indexA == nil && indexB == nil {
            return numberOfLine
        } else if indexA == nil {
            
        } else {
            
        }
        
        return 0
    }
    
}

let solution = Solution()
let A = [1,4,2,5,4,6,7,12,4,2,5,7,8,3,7,1,9,7,23]
let B = [1,2,4,5,3,5,7,2,8,9,2,4,5,7,9,12,4,6]
solution.maxUncrossedLines(A, B)

let aaa = ["d", "f"]

