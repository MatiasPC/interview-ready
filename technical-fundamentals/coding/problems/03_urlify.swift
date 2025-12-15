/*
 URLify: Write a method to replace all spaces in a string with '%20'. You may assume that the string
 has sufficient space at the end to hold the additional characters, and that you are given the "true"
 length of the string. (Note: If implementing in Java, please use a character array so that you can
 perform this operation in place.)
 EXAMPLE
 Input: "Mr John Smith "
 , 13
 Output: "Mr%20John%20Smith"
 */

class Solution {
    
    func urlify(_ s: String) -> String {
        let sArray = Array(s)
        var resultArray = [String]()
        
        for i in 0..<sArray.count {
            if i != sArray.count - 1 {
                if sArray[i] == " " {
                    resultArray.append("%20")
                    continue
                }
                resultArray.append(String(sArray[i]))
            } else {
                if sArray[i] != " " {
                    resultArray.append(String(sArray[i]))
                }
            }
            
        }
        return resultArray.joined()
    }
    
}

let solution = Solution()
var input = "ja ja ja"
print(input)
print(solution.urlify(input))

