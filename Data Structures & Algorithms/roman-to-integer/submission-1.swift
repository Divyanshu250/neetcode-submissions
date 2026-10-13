class Solution {
    func romanToInt(_ s: String) -> Int {
        var number = 0
        var romanMap : [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]

        var array = Array(s)

        for index in 0..<array.count {
            guard let currNum = romanMap[array[index]] else {
                return 0
            }

            if index + 1 < array.count , let nextNum = romanMap[array[index+1]] {
                if currNum < nextNum {
                    number -= currNum
                } else {
                    number += currNum
                }
            } else {
                number += currNum
            }
        }

        return number
    }
}
