class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var i = 0
        var minLength = nums.count + 1
        var windowSum = 0

        for j in 0..<nums.count {
            windowSum += nums[j]

            while windowSum >= target {
                minLength =  min(minLength, j - i + 1)
                windowSum -= nums[i]
                i += 1
            }
        }

        if minLength == nums.count + 1 {
            return 0
        }
        return minLength
}
}
