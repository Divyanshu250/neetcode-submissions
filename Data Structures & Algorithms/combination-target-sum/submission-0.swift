class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var currentSum = 0
        var currentCombination = [Int]()

        func findCombination(_ index: Int) {
            if index == nums.count {
                if currentSum == target {
                    result.append(currentCombination)
                }
                return
            }

            if nums[index] <= (target - currentSum) {
                currentSum += nums[index]
                currentCombination.append(nums[index])
                findCombination(index)
                currentSum -= nums[index]
                currentCombination.removeLast()
            }

            findCombination(index + 1)
        }

        findCombination(0)
        return result
    }
}
