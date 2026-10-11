class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var maxOnes = 0
        var countRequired = k
        var left = 0
        var right = 0

        while right < nums.count {
            let number = nums[right]
            if number == 0 {
                while countRequired == 0 {
                    let leftNumber = nums[left]
                    if leftNumber == 0 {
                        countRequired += 1
                    }
                    left += 1
                }

                if countRequired > 0 {
                    countRequired -= 1
                }
            }
            let length = right - left + 1
            maxOnes = max(maxOnes, length)
            right += 1
        }

        return maxOnes
    }
}
