class Solution {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
        var low = 0
        var high = 0
        var answer = 0
        for num in weights {
            high += num
        }

        if let max = weights.max() {
            low = max
        }

        while low <= high {
            let mid = low + (high - low) / 2
            let daysNeeded = returnNumberOfDays(weights, mid)
            if daysNeeded <= days {
                answer = mid
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return answer

    }

    func returnNumberOfDays(_ weight: [Int],_ capacity: Int) -> Int{
        var days = 1
        var load = 0

        for num in weight {
            if load + num > capacity {
                days += 1
                load = num
            } else {
                load += num
            }
        }
        return days
    }
}
