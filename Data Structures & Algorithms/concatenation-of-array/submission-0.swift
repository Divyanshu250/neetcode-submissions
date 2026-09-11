class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var resultArray = nums

        for num in nums {
            resultArray.append(num)
        }

        return resultArray

    }
}
