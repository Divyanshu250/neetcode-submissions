class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var low = 0
        var m = matrix.count
        var n = matrix[0].count
        var high = (m*n) - 1

        while low <= high {
            let mid = low + (high - low) / 2
            let row = mid / n
            let col = mid % n
            if matrix[row][col] == target {
                return true
            } else if matrix[row][col] < target {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }

        return false
    }
}
