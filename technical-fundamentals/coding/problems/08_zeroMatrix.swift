/*
 1.8 Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
 column are set to 0.
 
 

 */

class Solution {
    
    func zeroMatrix(m: [[Int]]) {
        var aux = m
        var zeroRows = [Int]()
        var zeroColumns = [Int]()
        
        for row in 0..<m.count {
            for column in 0..<m[0].count {
                if m[row][column] == 0 {
                    zeroRows.append(row)
                    zeroColumns.append(column)
                }
            }
        }
        
        for zeroRow in zeroRows {
            for column in 0..<m[0].count {
                aux[zeroRow][column] = 0
            }
        }
        
        for row in 0..<m.count {
            for zeroColumn in zeroColumns {
                aux[row][zeroColumn] = 0
            }
        }
        
        printMatrix(m: aux)
        
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
    [1,2,0],
    [4,5,6],
    [7,8,9]
]
s.zeroMatrix(m: m)


