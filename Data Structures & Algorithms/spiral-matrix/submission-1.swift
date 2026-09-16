class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty && matrix[0].isEmpty {
            return []
        }

        var top = 0
        var right = matrix[0].count - 1
        var bottom = matrix.count - 1
        var left = 0
        var resultArray = [Int]()

        while left <= right && top <= bottom {
            for col in left...right {
                resultArray.append(matrix[top][col])
            }
            top += 1

            if top <= bottom {
                for row in top...bottom {
                    resultArray.append(matrix[row][right])
                }
                right -= 1
            }

            if top <= bottom && left <= right {
                for col in stride(from: right, through: left, by: -1){
                    resultArray.append(matrix[bottom][col])
                }
                bottom -= 1
            }

            if top <= bottom && left <= right {
                for row in stride(from: bottom, through: top, by: -1) {
                    resultArray.append(matrix[row][left])
                }
                left += 1
            }

        }

        return resultArray
    }
}
