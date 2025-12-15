/*
 1.7
 Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4
 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
 
 [1,2,3]
 [4,5,6]
 [7,8,9]
 ->
 [1,4,7]
 [2,5,8]
 [3,6,9]
 ->
 [7,4,1]
 [8,5,2]
 [9,6,3]
 
 (0,0) -> (0,2)
 (0,1) -> (1,2)
 (0,2) -> (2,2)
 (1,0) -> (0,1)
 (1,1) -> (1,1)
 (1,2) -> (2,1)
 (2,0) -> (0,0)
 (2,1) -> (1,0)
 (2,2) -> (2,0)
  
 */

class Solution {
    func rotateMatrix(m: inout [[Int]]) {
        let rows = m.count
        let columns = m[0].count

        for row in 0..<rows {
            for column in row..<columns {
                let temp = m[row][column]
                m[row][column] = m[column][row]
                m[column][row] = temp
            }
        }
        
        for row in 0..<m.count {
            m[row] = m[row].reversed()
        }

    }
    
    func printMatrix(m: [[Int]]) {
        for row in 0..<m.count {
            for column in 0..<m[0].count {
                print(m[row][column])
            }
        }
    }
}

let s = Solution()
var m = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]
s.printMatrix(m: m)
s.rotateMatrix(m: &m)
s.printMatrix(m: m)


