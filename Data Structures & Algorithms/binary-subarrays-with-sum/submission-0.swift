class Solution {
    func numSubarraysWithSum(_ nums: [Int], _ goal: Int) -> Int {
        var hashMap: [Int: Int] = [0:1]
        var count = 0
        var currentSum = 0

        for i in 0..<nums.count {
            currentSum += nums[i]
            let needed = currentSum - goal
            if let presentCount = hashMap[needed] {
                count += presentCount
            }

            hashMap[currentSum, default: 0] += 1
        }

        return count
    }
}
