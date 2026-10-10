class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map: [Character: Int] = [:]
        var maxLength = 0
        var sArray = Array(s)
        var left = 0
        var right = 0

        while right < sArray.count {
            let char = sArray[right]
            if let previousIndex = map[char], previousIndex >= left {
                left = previousIndex + 1
            }

            map[char, default: 0] = right
            maxLength = max(maxLength, right - left + 1)
            right += 1
        }

        return maxLength
    }
}
