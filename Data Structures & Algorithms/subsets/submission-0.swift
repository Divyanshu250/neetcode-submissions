class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var currentSubsets = [Int]()

        func solve(_ index: Int) {
            if index == nums.count {
                result.append(currentSubsets)
                return
            }

            currentSubsets.append(nums[index])
            solve(index + 1)
            currentSubsets.removeLast()
            solve(index + 1)
        }
        solve(0)

        return result
    }
}
