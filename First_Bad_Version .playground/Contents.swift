import Foundation
/*
You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which will return whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.
*/

/*  BEST SOLUTION
 
 class Solution : VersionControl {
     func firstBadVersion(_ n: Int) -> Int {
         if n == 1 {
             return n
         }
         
         if isBadVersion(1) {
             return 1
         }
         
         var good = 1
         var bad = n
         while (good+1) != bad {
             var midPoint = Int((good + bad)/2)
             if isBadVersion(midPoint) {
                 bad = midPoint
             } else {
                 good = midPoint
             }
         }
         
         return bad
     }
 }
*/

struct Product {
    var index: Int
    var isBad: Bool
}

class VersionControl {
    func isBadVersion(_ product: Product) -> Bool {
        return product.isBad
    }
}

class Solution : VersionControl {
    
    var products: [Product]!
    
    func firstBadVersion() -> Int {
        if products.count == 1 {
            return products.first!.index
        }
        return findBad(lower: 0, upper: products.count)
    }

    private func findBad(lower: Int, upper: Int) -> Int {
        if isBadVersion(products[lower]) {
            return products[lower].index
        }
        var i = lower
        var j = upper
        while i < j {
            let pivot = i + Int((j-i)/2)
            isBadVersion(products[pivot]) ? (j = pivot) : (i = pivot + 1)
        }
        return products[i].index
    }
}

// TEST

let solution = Solution()

var products: [Product] = []

let firstBad: Int = 3
let productNumber: Int = 10

for i in 1...firstBad - 1  {
    products.append(Product(index: i, isBad: false))
}

for i in firstBad...productNumber {
    products.append(Product(index: i, isBad: true))
}

solution.products = products
solution.firstBadVersion()


