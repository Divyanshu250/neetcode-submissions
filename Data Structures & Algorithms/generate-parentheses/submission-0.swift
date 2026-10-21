class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()

        func backTracking(_ str: String, _ open: Int, _ close: Int) {
            if str.length == 2 * n {
                result.append(str)
                return
            }

            if open < n {
                backTracking(str + "(", open + 1, close)
            }

            if close < open {
                backTracking(str + ")", open , close + 1)
            }

        }

        backTracking("", 0, 0)
        return result
    }
}
