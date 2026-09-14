class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var countMap: [Int:Int] = [:]
        var answer = [Int]()
        var noOfTimesElementShouldOccur = nums.count / 3

        for num in nums {
            countMap[num, default: 0] += 1
        }

        for (key, value) in countMap {
            if value > noOfTimesElementShouldOccur {
                answer.append(key)
            }
        }

        return answer

        
    }
}
