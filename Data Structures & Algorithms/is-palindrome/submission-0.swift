class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }

        var wordArray = Array(s)
        var left = 0
        var right = wordArray.count - 1

        while left < right {
            if !wordArray[left].isLetter && !wordArray[left].isNumber {
                left += 1
                continue
            }

            if !wordArray[right].isLetter && !wordArray[right].isNumber {
                right -= 1
                continue
            }

            if wordArray[left].lowercased() != wordArray[right].lowercased() {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
