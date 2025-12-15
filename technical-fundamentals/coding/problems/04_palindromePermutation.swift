/*
 
 Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome.
 A palindrome is a word or phrase that is the same forwards and backwards. A permutation
 is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
 EXAMPLE
 Input: Tact Coa
 Output: True (permutations: "tacocat", "atcocta", etc.)
 
 */
import Foundation

class Solution {
    func palindromePermutation(_ s: String) -> Bool {
        
        // deberia dividir en dos el array
        // en caso de que sea impar puedo permitir uno distinto solamente
        // de cada letra tiene que estar la que encontre y otra mas (solo puede haber una letra con solo una en el caso de que sea impar)
        var dict: [Character:Int] = [:]
        var isPair: Bool = false
        var string = s
        string = string.replacingOccurrences(of: " ", with: "")
        string = string.lowercased()
        print(string)
        var sArray = Array(string)
        if string.count % 2 == 0 {
            isPair = true
        }
        
        for i in 0..<sArray.count {
            if dict[sArray[i]] == nil {
                dict[sArray[i]] = 1
            } else {
                dict[sArray[i]]! += 1
            }
        }
        
        for (key, value) in dict {
            if value % 2 == 0 {
                continue
            } else {
                // si es impar permito 1 y bajo el flag
                if !isPair {
                    isPair = true
                } else {
                    return false
                }
            }
        }
        
        return true
    }
}

let solution = Solution()
print(solution.palindromePermutation("Tact coa"))

