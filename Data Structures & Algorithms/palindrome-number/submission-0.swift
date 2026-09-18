class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }

        var num = x
        var reverseNumber = 0

        while num != 0 {
            let mod = num % 10
            reverseNumber = (reverseNumber * 10) + mod
            num = num / 10
        }

        if reverseNumber == x {
            return true
        }

        return false
    }
}
