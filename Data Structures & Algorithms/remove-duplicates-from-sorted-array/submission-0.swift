class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return -1
        }

        var slowPointer = 0

        for fast in 0..<nums.count {
            if nums[fast] != nums[slowPointer] {
                slowPointer += 1
                nums[slowPointer] = nums[fast]
            }
        }

        return slowPointer + 1
    }
}
