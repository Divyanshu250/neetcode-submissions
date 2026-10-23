class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let array = Array(s)
        var left = 0
        var right = array.count - 1

        while left < right {
            if array[left] != array[right] {
                return isPurePalindrome(array, left + 1, right) || isPurePalindrome(array, left, right - 1)
            }
            left += 1
            right -= 1
        }

        return true
    }

    private func isPurePalindrome(_ array: [Character], _ i: Int, _ j: Int) -> Bool {
        var left = i
        var right = j
        
        while left < right {
            if array[left] != array[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
