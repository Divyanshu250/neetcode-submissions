class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let row = matrix.count
        let col = matrix[0].count

        var arrRow = Array(repeating: 0, count: row)
        var arrCol = Array(repeating: 0, count: col)

        for r in 0..<row{
            for c in 0..<col {
                if matrix[r][c] == 0 {
                  arrRow[r] = 1
                  arrCol[c] = 1
                }
            }
        }

        for r in 0..<row{
            for c in 0..<col{
                if arrRow[r] == 1 || arrCol[c] == 1 {
                    matrix[r][c] = 0
                }
            }
        }
   }
}
