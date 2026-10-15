class Solution {
    func longestPalindrome(_ s: String) -> String {
        var maxLength = 0
        var startingPoint = -1

        let sArray = Array(s)

        for i in 0..<sArray.count {
            for j in i..<sArray.count {
                if isPalindrome(sArray, i , j) {
                    let length = j - i + 1
                    if length > maxLength {
                        maxLength = length
                        startingPoint = i
                    }
                }
            }
        }

        let endingPoint = startingPoint + maxLength
        return String(sArray[startingPoint..<endingPoint])
    }

    func isPalindrome(_ str: [Character], _ i: Int, _ j: Int) -> Bool {
        var left = i
        var right = j

        while left <= right {
            if str[left] != str[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}
