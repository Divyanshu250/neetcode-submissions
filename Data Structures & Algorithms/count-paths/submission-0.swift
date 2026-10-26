class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var matrix = Array(repeating: Array(repeating: 1, count: n), count: m)

        for r in 1..<m {
            for c in 1..<n {
                matrix[r][c] = matrix[r-1][c] + matrix[r][c-1]
            }
        }

        return matrix[m-1][n-1]
    }
}
