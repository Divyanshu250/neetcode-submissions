class Solution {
    func mySqrt(_ x: Int) -> Int {
        var answer = 0
        var low = 1
        var high = x

        while low <= high {
            let mid = low + (high - low) / 2
            if (mid*mid) <= x {
                answer = mid
                low = mid + 1
            } else {
                high = mid - 1
            }
        }

        return answer
    }
}
