class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var resultArray = Array(repeating: 0, count: 2 * nums.count)

        for index in 0..<nums.count {
            resultArray[index] = nums[index]
            resultArray[index + nums.count] = nums[index]
        }

        return resultArray

    }
}
