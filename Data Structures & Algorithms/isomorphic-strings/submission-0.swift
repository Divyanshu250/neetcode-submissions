class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.length != t.length {
            return false
        }

        var sArray = Array(s)
        var tArray = Array(t)

        var sToTMap: [Character: Character] = [:]
        var tToSMap: [Character: Character] = [:]

        for i in 0..<sArray.count {
            let s = sArray[i]
            let t = tArray[i]

            if let value = sToTMap[s] {
                if value != t {
                    return false
                }
            } else {
                sToTMap[s] = t
            }

            if let value = tToSMap[t] {
                if value != s {
                    return false
                }
            } else {
                tToSMap[t] = s
            }
        }

        return true
    }
}
