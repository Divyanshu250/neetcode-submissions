class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap: [Int:Int] = [:]
        for i in 0..<nums.count {
            let needed = target - nums[i]

            if let numIndex = hashMap[needed] {
                return [numIndex, i ]
            }

            hashMap[nums[i], default: 0] = i
        }

        return []
    }
}
