/*
 1.5
 One Away: There are three types of edits that can be performed on strings: insert a character,
 remove a character, or replace a character. Given two strings, write a function to check if they are
 one edit (or zero edits) away.
 EXAMPLE
 pale, ple -> true
 pales, pale -> true
 pale, bale -> true
 pale, bake -> false
 */

class Solution {
    func oneAway(_ s1: String, _ s2: String) -> Bool {
        var p1 = 0
        var p2 = 0
        var edits = 0
        
        let array1 = Array(s1)
        let array2 = Array(s2)
    
        while p1 < array1.count && p2 < array2.count {
            if array1[p1] == array2[p2] {
                p1 += 1
                p2 += 1
            } else {
                edits += 1
                if edits > 1 { return false }
                if array1.count == array2.count {
                    p1 += 1
                    p2 += 1
                } else {
                    if array1.count < array2.count {
                        p2 += 1
                    } else {
                        p1 += 1
                    }
                    
                }
            }
        }
        
        if p1 < array1.count || p2 < array2.count {
            edits += 1
        }
        
  return edits <= 1
        
    }
}

let s = Solution()
print("pale", "ple")
print(s.oneAway("pale", "ple"))
print("pales", "pale")
print(s.oneAway("pales", "pale"))
print("pale", "bale")
print(s.oneAway("pale", "bale"))
print("pale", "bake")
print(s.oneAway("pale", "bake"))
