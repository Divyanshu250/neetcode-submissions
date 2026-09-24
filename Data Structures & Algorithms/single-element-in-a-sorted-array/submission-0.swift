class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        if nums[0] != nums[1] {
            return nums[0]
        }
        if nums[nums.count - 1] != nums[nums.count - 2] {
            return nums[nums.count - 1]
        }

        var low = 1
        var high = nums.count - 2

        while low <= high {
            let mid = low + (high - low) / 2
            if nums[mid] != nums[mid - 1] && nums[mid] != nums[mid + 1] {
                return nums[mid]
            }
            if mid % 2 == 1 && nums[mid - 1] == nums[mid] || mid % 2 == 0 && nums[mid + 1] == nums[mid] {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }

        return -1
    }
}
