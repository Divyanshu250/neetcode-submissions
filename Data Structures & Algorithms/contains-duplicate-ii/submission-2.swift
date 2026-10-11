class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var hashMap: [Int: Int] = [:]

        for i in 0..<nums.count {
            if let indexPresent = hashMap[nums[i]] {
                if i - indexPresent <= k {
                    return true
                }
            }

            hashMap[nums[i], default: 0] = i
        }

        return false
    }
}
