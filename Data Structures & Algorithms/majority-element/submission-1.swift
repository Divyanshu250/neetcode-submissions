class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var candidate = nums[0]

        for num in nums {
            if num == candidate {
                count += 1
            } else {
                count -= 1
                if count == 0 {
                    candidate = num
                    count += 1
                }
            }
        }

        return candidate
    }
}
