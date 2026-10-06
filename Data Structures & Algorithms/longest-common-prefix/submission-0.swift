class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }

        if strs.count == 1 {
            return strs[0]
        }

        var sortedArray = strs.sorted()
        var first = sortedArray[0]
        var last = sortedArray[sortedArray.count - 1]

        var answer = ""

        var firstWordArray = Array(first)
        var secondWordArray = Array(last)

        for i in 0..<firstWordArray.count {
            if firstWordArray[i] == secondWordArray[i] {
                answer.append(firstWordArray[i])
            } else {
                break
            }
        }

        return answer
    }
}
