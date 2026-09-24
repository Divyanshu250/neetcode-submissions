class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let count = nums.count
        let totalSum = count * (count + 1) / 2
        var currentSum = 0

        for num in nums {
            currentSum += num
        }

        return totalSum - currentSum
    }
}
