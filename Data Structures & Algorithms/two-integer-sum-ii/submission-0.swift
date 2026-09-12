class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        var result = [Int]()

        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum < target {
                left += 1
            } else if sum > target {
                right -= 1
            } else {
                result.append(left + 1)
                result.append(right + 1)
                break
            }
        
        }

        return result
    }
}
