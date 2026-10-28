class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var sortedArray = nums.sorted()
        var result = Set<[Int]>()
        var currentSeq = [Int]()

        func findSubsets(_ index: Int) {
            if index == sortedArray.count {
                result.insert(currentSeq)
                return
            }

            currentSeq.append(sortedArray[index])
            findSubsets(index + 1)
            currentSeq.removeLast()
            findSubsets(index + 1)
        }

        findSubsets(0)

        return Array(result)
    }
}
