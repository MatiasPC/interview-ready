/*
 1.6
 String Compression: Implement a method to perform basic string compression using the counts
 of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the
 "compressed" string would not become smaller than the original string, your method should return
 the original string. You can assume the string has only uppercase and lowercase letters (a - z).
 */

class Solution {
    func stringCompression(s: String) -> String {
        let array = Array(s.lowercased())
        var resultArray = [String]()
        var lastChar: Character = array[0]
        var count = 0
        for i in 0..<array.count {
            if array[i] == lastChar {
                count += 1
            } else {
                resultArray.append(String(lastChar))
                resultArray.append(String(count))
                count = 1
                lastChar = array[i]
            }
        }
        // add last item
        resultArray.append(String(lastChar))
        resultArray.append(String(count))
        
        let compressed = resultArray.joined()
        if compressed.count < s.count {
            return compressed
        } else {
            return s
        }
    }
}

let s = Solution()
print(s.stringCompression(s: "aabcccccaaa"))

