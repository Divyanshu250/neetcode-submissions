class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {

        if nums.isEmpty {
            return 0
        }

        var num = Set(nums)

        var maxLength = 0

        for i in 0..<nums.count {
            var value = nums[i]
            if !num.contains(value - 1) {
                var count = 1
                
                while num.contains(value + 1) {
                    count += 1
                    value += 1
                }

                if count > maxLength {
                    maxLength = count
                }
                count = 0
            }
        }

        return maxLength
    }
}
