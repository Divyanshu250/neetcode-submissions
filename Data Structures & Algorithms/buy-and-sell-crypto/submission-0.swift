class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0

        for i in 1..<prices.count {
            let profit = prices[i] - minPrice
            if profit > maxProfit {
                maxProfit = profit
            }
            if prices[i] < minPrice {
                minPrice = prices[i]
            }
        }

        return maxProfit
    }
}
