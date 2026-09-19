class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        let left = 0
        let right = nums.count - 1
        rotateArray(&nums, left, right)
        rotateArray(&nums, left, k - 1)
        rotateArray(&nums, k, right)
    }

    func rotateArray(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var left = start
        var right = end
        while left < right {
            let temp = nums[left]
            nums[left] = nums[right]
            nums[right] = temp
            left += 1
            right -= 1
        }
    }
}