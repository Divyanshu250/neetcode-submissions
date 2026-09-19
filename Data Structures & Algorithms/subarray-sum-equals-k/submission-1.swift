class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var map: [Int: Int] = [:]
        map[0] = 1

        var sum = 0
        var totalSubArray = 0

        for i in 0..<nums.count {
            sum += nums[i]

            let needed = sum - k
            if let count = map[needed] {
                totalSubArray += count
            }

            map[sum, default: 0] += 1
        }

        return totalSubArray
    }
}
