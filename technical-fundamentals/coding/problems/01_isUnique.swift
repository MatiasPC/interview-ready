/*
 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you
 cannot use additional data structures?
*/

import Foundation

class Solution {
    
    // Solution with one line.
    func isUniqueOneLine(_ s: String) -> Bool {
        return Set(s).count == s.count
    }
    
    // Solution without using additional data structures
    func isUnique(_ s: String) -> Bool {
        
        var array: [Character] = []
        let sArray = Array(s)
        
        for i in 0..<sArray.count {
            if array.contains(sArray[i]) {
                return false
            }
            array.append(sArray[i])
        }
        return true
    }
    
}

let solution = Solution()
print("hola = \(solution.isUniqueOneLine("hola"))")
print("asado = \(solution.isUniqueOneLine("asado"))")
print("aaaaad = \(solution.isUniqueOneLine("aaaaad"))")

print("hola = \(solution.isUnique("hola"))")
print("asado = \(solution.isUnique("asado"))")
print("aaaaad = \(solution.isUnique("aaaaad"))")

