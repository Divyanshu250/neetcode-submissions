class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {

        if nums.isEmpty {
            return 0
        }

        var sorted = nums.sorted()

        var maxLength = 1
        var currentStreak = 1

        for i in 1..<sorted.count {
            if sorted[i] == sorted[i-1] + 1 {
                currentStreak += 1
            } else if sorted[i] != sorted[i-1] {
                if currentStreak > maxLength {
                   maxLength =  currentStreak
                }
                currentStreak = 1
            }
        }

        if currentStreak > maxLength {
                   maxLength =  currentStreak
                }

                return maxLength
    }
}
