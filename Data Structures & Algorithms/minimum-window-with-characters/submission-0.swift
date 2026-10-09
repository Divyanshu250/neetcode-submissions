class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if s.length < t.length {
            return ""
        }

        var sArray = Array(s)
        var tMap = [Character: Int]()

        for char in t {
            tMap[char, default: 0] += 1
        }

        var left = 0
        var right = 0
        var minLength = Int.max
        var bestStartIndex = -1
        var countRequired = t.length

        while right < sArray.count {
            let char = sArray[right]

            if let count = tMap[char] {
                if count > 0 {
                    countRequired -= 1
                }

                tMap[char] = count - 1
            }

            while countRequired == 0 {
                let length = right - left + 1

                if length < minLength {
                    minLength = length
                    bestStartIndex = left
                }

                let leftChar = sArray[left]

                if let count = tMap[leftChar] {
                    tMap[leftChar] = count + 1

                    if tMap[leftChar]! > 0 {
                        countRequired += 1
                    }
                }

                left += 1

            }

            right += 1
        }

        return bestStartIndex == -1 ? "" : String(sArray[bestStartIndex..<(bestStartIndex + minLength)])
    }
}
