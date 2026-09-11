class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var hashMap: [Character: Int] = [:]

        for char in s {
            hashMap[char, default: 0] += 1
        }

        for char in t {
            guard let count = hashMap[char] else {
                return false
            }

            if count == 1 {
                hashMap[char] = nil
            } else {
                hashMap[char] = count - 1
            }
        }

       return hashMap.isEmpty
    }
}
