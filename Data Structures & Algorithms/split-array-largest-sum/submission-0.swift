class Solution {
    func splitArray(_ nums: [Int], _ k: Int) -> Int {
        var low = 0
        var high = 0
        if let max = nums.max(){
            low = max
        }

        for num in nums {
            high += num
        }

        while low <= high {
            let mid = low + (high - low) / 2
            let pairs = findPairs(nums, mid)
            if pairs <= k {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return low
        
    }

    func findPairs(_ nums: [Int], _ maxSum: Int) -> Int {
        var sum = 0
        var pairs = 1

        for num in nums {
            if (sum + num) <= maxSum {
                sum += num
            } else {
                pairs += 1
                sum = num
            }
        }

        return pairs
    }
}
