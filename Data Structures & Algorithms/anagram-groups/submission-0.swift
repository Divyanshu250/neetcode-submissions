class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groupMap = [String:[String]]()

        for words in strs {
            let sortedWord = String(words.sorted())
            groupMap[sortedWord, default: []].append(words)
        }

        return Array(groupMap.values)
    }
}