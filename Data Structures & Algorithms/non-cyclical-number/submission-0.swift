class Solution {
    func isHappy(_ n: Int) -> Bool {
        var number = n
        var seenNum = Set<Int>()

        while number != 1 && !seenNum.contains(number) {
            seenNum.insert(number)

            var currentSum = 0
            var tempNum = number

            while tempNum > 0 {
                let digit = tempNum % 10
                currentSum += digit * digit
                tempNum = tempNum / 10
            }

            number = currentSum

        }

        return number == 1
    }
}
