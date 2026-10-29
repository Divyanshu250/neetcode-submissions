class Solution {
    func partition(_ s: String) -> [[String]] {
        var array = Array(s)
        var result = [[String]]()
        var currentPartition = [String]()

        func findSubstring(_ index: Int) {
            if index == array.count {
                result.append(currentPartition)
                return
            }

            for i in index..<array.count {
                if isPalindrom(array, index, i) {
                    currentPartition.append(String(array[index...i]))
                   findSubstring(i + 1)
                    currentPartition.removeLast()
                }
            }
        }
        findSubstring(0)
        return result
    }

    func isPalindrom(_ array: [Character], _ start: Int, _ end: Int) -> Bool {
        var left = start
        var right = end

        while left < right {
            if array[left] != array[right] {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }

}
