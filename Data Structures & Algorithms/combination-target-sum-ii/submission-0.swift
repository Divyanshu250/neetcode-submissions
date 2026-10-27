class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var sortedArray = candidates.sorted()
        var result = [[Int]]()
        var currentSeq = [Int]()
        var targetValue = target

        func findCombination(_ index: Int) {
            if targetValue == 0 {
                result.append(currentSeq)
                return
            }

            if targetValue < 0 || index == candidates.count {
                return
            }

            if sortedArray[index] <= targetValue {
                targetValue -= sortedArray[index]
                currentSeq.append(sortedArray[index])
                findCombination(index + 1)
                targetValue += sortedArray[index]
                currentSeq.removeLast()
            }

            var nextIndex = index + 1
            while nextIndex < sortedArray.count && sortedArray[nextIndex] == sortedArray[index] {
                nextIndex += 1
            }

            findCombination(nextIndex)
        }

        findCombination(0)
        return result


    }
}
