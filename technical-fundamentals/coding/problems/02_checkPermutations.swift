/*
 Check Permutation: Given two strings, write a method to decide if one is a permutation of the
 other.
 */

class Solution {
    
    func isPermutation(_ s1: String, _ s2: String) -> Bool {
        if s1.count != s2.count { return false }
        let set1 = Set(s1)
        let set2 = Set(s2)
        
        return set1 == set2
    }
    
    
    
}

let solution = Solution()
let input1 = "hola"
let input2 = "aloh"
let input3 = "alohs"

print("\(input1) \(input2) = \(solution.isPermutation(input1, input2))")
print("\(input1) \(input3) = \(solution.isPermutation(input1, input3))")


