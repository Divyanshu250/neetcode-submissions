class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var hashMap: [Character: Int] = [:]
        var sArray = Array(s)
        var left = 0
        var right = 0
        var maxLength = 0
        var maxFreq = 0
        var changesRequired = 0

        while right < sArray.count {
            let rightChar = sArray[right]
            hashMap[rightChar, default: 0] += 1
            if let maxValue = hashMap.values.max() {
                maxFreq = max(maxFreq, maxValue)
            }
            let length = right - left + 1
            changesRequired = length - maxFreq
            if changesRequired <= k {
                maxLength = max(maxLength, length)
            }
            while changesRequired > k {
                let leftChar = sArray[left]
                if let count = hashMap[leftChar] {
                    if count == 1 {
                        hashMap.removeValue(forKey: leftChar)
                    } else {
                        hashMap[leftChar] = count - 1
                    }
                }
                if let maxValue = hashMap.values.max() {
                    maxFreq = max(maxFreq, maxValue)
                }
                left += 1
                let length = right - left + 1
                changesRequired = length - maxFreq
            }
            right += 1
        }
        return maxLength
    }
}
