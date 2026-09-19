class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var insertIndex = 0

        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[insertIndex] = nums[i]
                insertIndex += 1
            }
        }

        while insertIndex < nums.count{
            nums[insertIndex] = 0
            insertIndex += 1
        }
    }
}
