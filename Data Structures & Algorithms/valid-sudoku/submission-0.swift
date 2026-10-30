class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var row = Array(repeating: Set<Character>(), count: 9)
        var col = Array(repeating: Set<Character>(), count: 9)
        var gridBox = Array(repeating: Set<Character>(), count: 9)

        for r in 0..<board.count {
            for c in 0..<board.count {
                let char = board[r][c]

                if char == "." {
                    continue
                }

                let boxIndex = (r/3) * 3 + (c/3)

                if row[r].contains(char) || col[c].contains(char) || gridBox[boxIndex].contains(char) {
                    return false
                }

                row[r].insert(char)
                col[c].insert(char)
                gridBox[boxIndex].insert(char)
            }
        }

        return true
    }
}
