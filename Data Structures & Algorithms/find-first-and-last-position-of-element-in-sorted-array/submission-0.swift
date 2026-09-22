class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty {
            return [-1,-1]
        }
       
        let lowerBound = findLowerBound(nums, target)

        if lowerBound == nums.count || nums[lowerBound] != target {
            return [-1,-1]
        }

        return [lowerBound, findUpperBound(nums, target) - 1]
    }

    func findLowerBound(_ nums: [Int],_ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1

        while low <= high {
            let mid = low + (high - low) / 2
            if nums[mid] >= target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return low
    }

    func findUpperBound(_ nums: [Int],_ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1

        while low <= high {
            let mid = low + (high - low) / 2
            if nums[mid] > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return low
    }
}
