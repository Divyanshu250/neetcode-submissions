class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var mutuableBoard = board
        var wordArray = Array(word)

        func dfs(_ r: Int, _ c: Int, _ index: Int) -> Bool {
            if index == wordArray.count {
                return true
            }

            if r < 0 || c < 0 || r >= board.count || c >= board[0].count || mutuableBoard[r][c] != wordArray[index] {
                return false
            }

            let tempChar = mutuableBoard[r][c]
            mutuableBoard[r][c] = "$"

            let found = dfs(r-1, c, index + 1) || dfs(r+1, c, index+1) || dfs(r, c-1, index+1) || dfs(r, c+1, index+1) 

            mutuableBoard[r][c] = tempChar

            return found

        }
        

        for r in 0..<board.count {
            for c in 0..<board[0].count {
                if board[r][c] == wordArray[0] {
                    if dfs(r,c,0) {
                        return true
                    }
                }
            }
        }

        return false
    }
}
