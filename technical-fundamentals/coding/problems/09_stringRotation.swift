/*
 1.9 String Rotation:Assume you have a method isSubstring which checks if one word is a substring
 of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one
 call to isSubstring (e.g., "waterbottle" is a rotation of"erbottlewat").
 */

class Solution {
    func isStringRotation(_ s1: String, _ s2: String) -> Bool {
        var array1 = Array(s1)
        let array2 = Array(s2)
        
        guard array1.count == array2.count else { return false }
        
        for _ in 0..<array1.count {
            if array1 == array2 {
                return true
            } else {
                let aux = array1.removeFirst()
                array1.append(aux)
            }
        }
        return false
    }
    
    func isSubstring(_ s1: String, _ s2: String) -> Bool {
        return s1.contains(s2)
    }
}

let s = Solution()
print("waterbottle", "erbottlewat")
print(s.isStringRotation("waterbottle", "erbottlewat"))



