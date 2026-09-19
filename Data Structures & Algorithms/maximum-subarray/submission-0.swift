class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min
        var sum = 0

        for num in nums {
            sum += num
            if sum > maxSum {
                maxSum = sum
            }

            if sum < 0 {
                sum = 0
            }
        }

        return maxSum
    }
}
