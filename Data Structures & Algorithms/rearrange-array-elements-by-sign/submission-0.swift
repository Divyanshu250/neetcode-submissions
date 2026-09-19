class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var resultArray = Array(repeating: 0, count: nums.count)
        var posIndex = 0
        var negIndex = 1

        for num in nums {
            if num >= 0 {
                resultArray[posIndex] = num
                posIndex += 2
            } else {
                resultArray[negIndex] = num
                negIndex += 2
            }
        }

        return resultArray
    }
}
