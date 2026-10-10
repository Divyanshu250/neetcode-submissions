class Solution {
    func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
        var leftSum = 0
        var rightSum = 0
        var maxScore = 0

        for i in 0..<k {
            leftSum += cardPoints[i]
        }

        maxScore = leftSum
        var right = cardPoints.count - 1

        for i in stride(from: k-1, through: 0, by: -1) {
            leftSum -= cardPoints[i]
            rightSum += cardPoints[right]
            maxScore = max(maxScore, leftSum + rightSum)
            right -= 1
        }

        return maxScore
    }
}
