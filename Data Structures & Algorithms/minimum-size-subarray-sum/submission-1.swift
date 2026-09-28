class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var low = 1
    var high = nums.count
    var answer = 0
    
    while low <= high {
        let mid = low + (high - low) / 2
        
        if targetFound(nums, target, mid) {
            answer = mid
            high = mid - 1 
        } else {
            low = mid + 1
        }
    }
    
    return answer
}

func targetFound(_ nums: [Int], _ target: Int, _ size: Int) -> Bool {
    var currentSum = 0
    
    for i in 0..<nums.count {
        currentSum += nums[i]
        
        if i >= size {
            currentSum -= nums[i - size]
        }
        
        if i >= size - 1 && currentSum >= target {
            return true
        }
    }
    
    return false
}
}
