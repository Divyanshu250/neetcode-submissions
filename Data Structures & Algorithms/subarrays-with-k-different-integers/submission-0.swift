class Solution {
    func subarraysWithKDistinct(_ nums: [Int], _ k: Int) -> Int {
        return atMostK(nums, k) - atMostK(nums, k-1)
    }

    func atMostK(_ nums: [Int], _ k: Int) -> Int {
        var map: [Int:Int] = [:]
        var count = 0
        var left = 0
        var right = 0

        while right < nums.count {
            let rightNum = nums[right]
            map[rightNum, default: 0] += 1
            while map.count > k {
                let leftNumber = nums[left]
                if let count = map[leftNumber] {
                    if count == 1{
                        map.removeValue(forKey: leftNumber)
                    } else {
                        map[leftNumber] = count - 1
                    }
                }
                left += 1
            }
            count += right - left + 1
            right += 1
        }
        return count
    }
}
