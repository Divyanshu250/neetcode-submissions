class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        var low = 0
        var high = nums.count - 1

        while low <= high {
            let mid = low + (high - low) / 2

            if nums[mid] == target {
                return true
            }

            if nums[low] == nums[mid] && nums[mid] == nums[high] {
                low = low + 1
                high = high - 1
                continue
            }

            if nums[low] <= nums[mid] {
                if nums[low] <= target && target <= nums[mid] {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            } else {
                if nums[mid] <= target && target <= nums[high] {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            } 
        }

        return false
    }
}
