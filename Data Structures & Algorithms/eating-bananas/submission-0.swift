class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var low = 1
        var high = 1
        if let max = piles.max() {
            high = max
        }
        var answer = Int.max

        while low <= high {
            let mid = low + (high - low) / 2
            let sum = numDivideSum(piles,mid,h)
            if sum == 1 {
                if mid < answer {
                    answer = mid
                }
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return answer
    }

    func numDivideSum(_ piles: [Int], _ mid: Int, _ h: Int) -> Int {
        var sum = 0
        for num in piles {
            sum = sum + Int(ceil(Double(num)/Double(mid)))
        }

        return Int(ceil(Double(sum)/Double(h)))
    }
}
