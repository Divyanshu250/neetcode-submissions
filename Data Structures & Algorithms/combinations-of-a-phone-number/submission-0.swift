class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty {
            return []
        }

        let mapping: [Character: [Character]] = [
            "2": ["a", "b", "c"],       "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],       "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],       "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],       "9": ["w", "x", "y", "z"]
        ]

        var result = [String]()
        var digitArray = Array(digits)
        var currentSeq = [Character]()

        func findComb(_ index: Int) {
            if index == digitArray.count {
                result.append(String(currentSeq))
                return
            }

            let number = digitArray[index]

            guard let letters = mapping[number] else {
                return
            }

            for letter in letters {
                currentSeq.append(letter)
                findComb(index + 1)
                currentSeq.removeLast()
            }
        }

        findComb(0)
        return result
    }
}
