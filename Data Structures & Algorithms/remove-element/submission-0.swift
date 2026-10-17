class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var left = 0
        var right = 0

        while right < nums.count {
            if nums[right] != val {
                nums[left] = nums[right]
                left += 1
            }
            right += 1
        }

        return left
    }
}
