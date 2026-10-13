class Solution {
    func maxDepth(_ s: String) -> Int {
        var count = 0
        var max = 0

        for char in s {
            if char == "(" {
                count += 1
                if count > max {
                    max = count
                }
            } else if char == ")" {
                count -= 1
            }
        }

        return max
    }
}
