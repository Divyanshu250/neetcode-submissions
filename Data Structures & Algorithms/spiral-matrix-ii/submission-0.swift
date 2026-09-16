class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        var count = 0
        var top = 0
        var right = matrix.count - 1
        var bottom = matrix.count - 1
        var left = 0

        while left <= right && top <= bottom {
            for col in left...right {
                count += 1
                matrix[top][col] = count
            }
            top += 1

            if top <= bottom {
                for row in top...bottom {
                    count += 1
                    matrix[row][right] = count
                }
                right -= 1
            }

            if top <= bottom && left <= right {
                for col in stride(from: right, through: left , by: -1) {
                    count += 1
                    matrix[bottom][col] = count
                }
                bottom -= 1
            }

            if top <= bottom && left <= right {
                for row in stride(from: bottom, through: top, by: -1) {
                    count += 1
                    matrix[row][left] = count
                }
                left += 1
            }
        }

        return matrix
    }
}
