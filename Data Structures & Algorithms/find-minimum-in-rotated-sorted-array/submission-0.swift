class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var minVal = Int.max
        var low = 0
        var high = nums.count - 1

        while low <= high {
            let mid = low + (high - low) / 2
            if nums[low] <= nums[mid] {
                if nums[low] < minVal {
                    minVal = nums[low]
                }
                low = mid + 1
            }
            if nums[mid] <= nums[high] {
                if nums[mid] < minVal {
                    minVal = nums[mid]
                }
                high = mid - 1
            } 

        }

        return minVal
    }
}
