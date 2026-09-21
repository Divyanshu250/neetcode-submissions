class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        var answer = nums.count
        
        while low <= high {
            let mid = low + (high - low) / 2
            if nums[mid] >= target {
                answer = mid
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return answer
    }
}
